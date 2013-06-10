/** @file
 *
 * @ingroup implementationMax
 *
 * @brief array≈ : wraps the #TTAudioObjectBaseArray class as an AudioGraph array external for Jamoma AudioGraph.
 *
 * @details
 *
 * @authors Nils Peters, Trond Lossius
 *
 * @copyright © 2011 by Nils Peters @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "maxAudioGraph.h"


int TTCLASSWRAPPERMAX_EXPORT main(void)
{
	TTAudioGraphInit();
	wrapAsMaxAudioGraph(TT("array"), "jcom.array≈", NULL);
	return wrapAsMaxAudioGraph(TT("array"), "array≈", NULL);
}
