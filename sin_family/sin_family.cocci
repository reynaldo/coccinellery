//
//  Use AF_INET for sin_family field
//
// Target:  Linux
// Copyright:  Copyright: 2012 - LIP6/INRIA
// License:  Licensed under GPLv2 or any later version.
// Author: Julia Lawall <Julia.Lawall@lip6.fr>
// URL: http://coccinelle.lip6.fr/ 
// URL: http://coccinellery.org/ 

@@
struct sockaddr_in sip;
@@

(
sip.sin_family ==
- PF_INET
+ AF_INET
|
sip.sin_family !=
- PF_INET
+ AF_INET
|
sip.sin_family =
- PF_INET
+ AF_INET
)
