lummox-uikit-extensions
=======================
*Version 1.0*

A collection of useful UIKit functionality, including:
- Positioning (top, bottom, left, right, width, height)
- Centering
- Working with view trees

Examples
---------
    // basic usage
    UIView *myView = [[UIView alloc] initWithFrame:CGRectMake(10, 10, 20, 20)];

    // Move the view to (40,40);
    myView.lmx_left = 40.0;
    myView.lmx_right = 40.0;

    // Move the view to (10, 10)
    myView.lmx_right = 30.0;
    myView.lmx_bottom = 30.0;

    // Centering
    [myView lmx_centerInParent];

    // View tree
    [myView lmx_removeAllSubviews];


Setup Instructions
------------------
The recommended way is to install via Cocoapods.

It uses a private repo, which you can add to your pods installation like this:
pod repo add lummox-podrepo https://github.com/mbusheikin/lummox-podrepo.git

Add into your Podfile:
pod 'lummox-uikit-extensions'

Then run:
pod update (or pod install)


MIT License
-----------
    Copyright (c) 2013 Charles Scalesse.

    Permission is hereby granted, free of charge, to any person obtaining a
    copy of this software and associated documentation files (the
    "Software"), to deal in the Software without restriction, including
    without limitation the rights to use, copy, modify, merge, publish,
    distribute, sublicense, and/or sell copies of the Software, and to
    permit persons to whom the Software is furnished to do so, subject to
    the following conditions:

    The above copyright notice and this permission notice shall be included
    in all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
    OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
    MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
    IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
    CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
    TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
    SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
