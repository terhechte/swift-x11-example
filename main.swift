import CX11.Xlib
import CX11.X

/// Define Variables

// The X11 Display
var d: _XPrivDisplay

// The window which we will create
var w: Window

// The events which X11 generates for us will be stored here
var e = UnsafeMutablePointer<_XEvent>.alloc(1)

// The text to display
var msg = "Hello Swift World"

// A pointer to the current X11 Screen
var s: UnsafeMutablePointer<Screen>

// Try to open the display. Calling this without X11 running will fail
d = XOpenDisplay(nil)
if d == nil {
	fatalError("cannot open display")
}

// Get the default screen
s = XDefaultScreenOfDisplay(d)

// And the current root window on that screen
let rootWindow = s.memory.root

// Create our window
w = XCreateSimpleWindow(d, rootWindow, 10, 10, 200, 100, 1, s.memory.black_pixel, s.memory.white_pixel)

// Define the events we which to receive from the X11 Server
XSelectInput(d, w, ExposureMask | KeyPressMask)

// Display the Window on the X11 Server
XMapWindow(d, w)

// Receive Events in this loop
loop: while true {

  // Wait for the next event
  XNextEvent(d, e)

  switch e.memory.type {
    // The window has to be drawn
    case Expose:
    XFillRectangle(d, w, s.memory.default_gc, 20, 20, 10, 10) // draw a small black rectangle
    XDrawString(d, w, s.memory.default_gc, 10, 70, msg, Int32(msg.characters.count)) // draw the text

    // The user did press
    case KeyPress:
    break loop

    // We never signed up for this event
    default: fatalError("Unknown Event")

  }

}

