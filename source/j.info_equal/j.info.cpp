/** @file
 *
 * @ingroup implementationMaxExternalsAudioGraph
 *
 * @brief j.info= : creates an external for AudioGraph that provides information about the incoming multichannel signal
 *
 * @details
 *
 * @authors Timothy Place, Trond Lossius
 *
 * @copyright © 2008 by Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "MaxAudioGraph.h"


// Data Structure for this object
struct Info {
    t_object				obj;
	TTAudioGraphObjectBasePtr	audioGraphObject;	// we wrap a simple 'thru' audiograph object
	TTPtr					outletSmartSignal;	// outlet for passing the input to the output, and so we can be pulled
	TTPtr					unused;				// this is an unused ptr, always set to NULL, to signal the end of the JAG outlets
	TTPtr					outletSampleRate;
	TTPtr					outletVectorSize;
	TTPtr					outletNumChannels;
	long					audioSourceOutlet;	// number of the outlet connected to our inlet
	long					maxNumChannels;		// the number of inlets or outlets, which is an argument at instantiation
	long					numChannels;		// the actual number of channels to use, set by the dsp method
	long					vectorSize;			// cached by the DSP method
	TTPtr					qelem;				// a queue for deferring 'bang' calls
};
typedef Info* InfoPtr;


// Prototypes for methods
InfoPtr	InfoNew(t_symbol* msg, long argc, t_atom* argv);
void	InfoFree(InfoPtr self);
void	InfoAssist(InfoPtr self, void* b, long msg, long arg, char* dst);
void	InfoBang(InfoPtr self);
void	InfoQfn(InfoPtr self);
TTErr	InfoConnect(InfoPtr self, TTAudioGraphObjectBasePtr audioSourceObject, long sourceOutletNumber);


// Globals
static t_class* sInfoClass;


/************************************************************************************/
// Main() Function

int C74_EXPORT main(void)
{
	t_class* c;

	TTAudioGraphInit();
	common_symbols_init();

	c = class_new("j.info=", (method)InfoNew, (method)InfoFree, sizeof(Info), (method)0L, A_GIMME, 0);

	class_addmethod(c, (method)InfoBang,			"bang",					0);
	class_addmethod(c, (method)MaxAudioGraphReset,	"graph.reset",		A_CANT, 0);
	class_addmethod(c, (method)InfoConnect,			"audio.connect",	A_OBJ, A_LONG, 0);
	class_addmethod(c, (method)MaxAudioGraphSetup,	"audio.setup",		A_CANT, 0);
	class_addmethod(c, (method)MaxAudioGraphDrop,	"audio.drop",		A_CANT, 0);
	class_addmethod(c, (method)MaxAudioGraphObject,	"audio.object",		A_CANT, 0);
	class_addmethod(c, (method)InfoAssist,			"assist",				A_CANT, 0);
    class_addmethod(c, (method)object_obex_dumpout,	"dumpout",				A_CANT, 0);
	class_addmethod(c, (method)jamoma_fileusage, "fileusage", A_CANT, 0);

	class_register(_sym_box, c);
	sInfoClass = c;
	return 0;
}


/************************************************************************************/
// Object Creation Method

InfoPtr InfoNew(t_symbol* msg, long argc, t_atom* argv)
{
    InfoPtr	self;
	TTValue	v;
	TTErr	err;

    self = InfoPtr(object_alloc(sInfoClass));
    if (self) {
    	object_obex_store((TTPtr)self, _sym_dumpout, (t_object*)outlet_new(self, NULL));
		self->outletNumChannels = outlet_new((t_pxobject*)self, 0);
		self->outletVectorSize = outlet_new((t_pxobject*)self, 0);
		self->outletSampleRate = outlet_new((t_pxobject*)self, 0);
		self->outletSmartSignal = outlet_new((t_pxobject*)self, "audio.connect");

		self->qelem = qelem_new(self, (method)InfoQfn);

		v.resize(2);
		v[0] = "thru";
		v[1] = 1;		// we set it up with 1 inlet, and later modify to 2 inlets if the connection is made
		err = TTObjectBaseInstantiate(TT("audio.object"), (TTObjectBasePtr*)&self->audioGraphObject, v);
		if (!self->audioGraphObject->getUnitGenerator().valid()) {
			object_error(SELF, "cannot load Jamoma DSP object");
			return NULL;
		}

		attr_args_process(self, argc, argv);
	}
	return self;
}


void InfoFree(InfoPtr self)
{
	TTObjectBaseRelease((TTObjectBasePtr*)&self->audioGraphObject);
	qelem_free(self->qelem);
}


/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void InfoAssist(InfoPtr self, void* b, long msg, long arg, char* dst)
{
	if (msg==1)			// Inlets
		strcpy(dst, "multichannel audio connection and control messages");
	else if (msg==2) {	// Outlets
		if (arg == 0)
			strcpy(dst, "multichannel audio connection, passing the input thru to the output");
		else if (arg == 1)
			strcpy(dst, "sample rate of the input signal");
		else if (arg == 2)
			strcpy(dst, "vector size of the input signal");
		else if (arg == 3)
			strcpy(dst, "number of channels in the input signal");
		else if (arg == 4)
			strcpy(dst, "dumpout");
	}
}


void InfoBang(InfoPtr self)
{
	qelem_set(self->qelem);
}


void InfoQfn(InfoPtr self)
{
	outlet_int(self->outletNumChannels, self->audioGraphObject->getOutputNumChannels(self->audioSourceOutlet));
	outlet_int(self->outletVectorSize, self->audioGraphObject->getOutputVectorSize(self->audioSourceOutlet));
	outlet_int(self->outletSampleRate, self->audioGraphObject->getOutputSampleRate(self->audioSourceOutlet));
}


TTErr InfoConnect(InfoPtr self, TTAudioGraphObjectBasePtr newAudioSourceObject, long sourceOutletNumber)
{
	TTErr err = MaxAudioGraphConnect((t_object*)self, newAudioSourceObject, sourceOutletNumber);

	self->audioSourceOutlet = sourceOutletNumber;
	InfoBang(self);
	return err;
}

