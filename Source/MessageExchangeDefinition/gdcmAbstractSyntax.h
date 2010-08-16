/*=========================================================================

  Program: GDCM (Grassroots DICOM). A DICOM library
  Module:  $URL$

  Copyright (c) 2006-2010 Mathieu Malaterre
  All rights reserved.
  See Copyright.txt or http://gdcm.sourceforge.net/Copyright.html for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/
#ifndef GDCMABSTRACTSYNTAX_H
#define GDCMABSTRACTSYNTAX_H

#include "gdcmTypes.h"

namespace gdcm
{

namespace network
{

/**
 Table 9-14
ABSTRACT SYNTAX SUB-ITEM FIELDS
 */
class AbstractSyntax
{
public:
  AbstractSyntax();
  const std::ostream &Write(std::ostream &os) const;
private:
  static const uint8_t ItemType;
  static const uint8_t Reserved2;
  uint16_t ItemLength; // len of
  std::string /*AbstractSyntax*/ Name; // UID
};

} // end namespace network

} // end namespace gdcm

#endif //GDCMAPPLICATIONCONTEXT_H