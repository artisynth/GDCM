/*=========================================================================
 *
 *  Copyright Insight Software Consortium
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *         http://www.apache.org/licenses/LICENSE-2.0.txt
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 *
 *=========================================================================*/

#ifndef GDCMASSOCIATIONESTABLISHMENT_H
#define GDCMASSOCIATIONESTABLISHMENT_H

#include "gdcmTypes.h"

namespace gdcm
{

namespace network
{

/**
 Table 9-2
ASSOCIATION ESTABLISHMENT
 */
class GDCM_EXPORT AssociationEstablishment
{
public:
  AssociationEstablishment();
  std::iostream &Run(std::iostream &is);

  /// \internal Compute Size
  //size_t Size() const;
  //void Print(std::ostream &os) const;

private:
};

} // end namespace network

} // end namespace gdcm

#endif //GDCMASSOCIATIONESTABLISHMENT_H
