import AppKit

class TestView: NSView
{
  override init(frame: NSRect)
  {
    super.init(frame: frame)
  }

  required init?(coder: NSCoder)
  {
    fatalError("init(coder:) has not been implemented")
  }

  var colorgreen = NSColor.green

    override func draw(_ dirtyRect: NSRect)
    {
      colorgreen.setFill()
        NSRectFill(self.bounds)

        let h = dirtyRect.height
        let w = dirtyRect.width
        let color:NSColor = NSColor.yellow

        let drect = NSRect(x: (w * 0.25),y: (h * 0.25),width: (w * 0.5),height: (h * 0.5))
        let bpath:NSBezierPath = NSBezierPath(rect: drect)

        color.set()
        bpath.stroke()

        NSLog("drawRect has updated the view")
    }
}
