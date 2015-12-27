import UIKit
import MapKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    self.view.backgroundColor = UIColor.lightGrayColor()
    print(self.view.bounds)
//    let view1 = UIView(frame: CGRect(origin: CGPoint(x: 100, y: 200), size: CGSize(width: 200, height: 200)))
//    let view2 = UIView(frame: CGRect(origin: CGPoint(x: 100, y: 100), size: CGSize(width: 50, height: 50)))
//    view1.backgroundColor = UIColor.redColor()
//    view2.backgroundColor = UIColor.orangeColor()
//    view1.alpha = CGFloat(22)
//    view1.tintColor = UIColor.blueColor()
//    view1.addSubview(view2)
//    self.view.addSubview(view1)
//    print(self.view.subviews)
//    print(self.view.superview)
//    print(view2.superview)

//    let label = UILabel()
//    label.text = "this is a label"
//    label.font = UIFont(name: "Menlo", size: 23)
//    label.backgroundColor = UIColor.blackColor()
//    label.textColor = UIColor.greenColor()
//    label.textAlignment = .Center
//    label.frame = CGRectMake(12, 12, 200, 100)
    //button

//    let button = UIButton()
//    button.setTitle("Amazing", forState: .Normal)
//    button.setTitleColor(UIColor.blueColor(), forState: .Normal)
//    button.frame = CGRect(origin: CGPoint(x: 100, y: 200), size: CGSize(width: 200, height: 200))
//
//    button.addTarget(self, action: "pressed:", forControlEvents: .TouchUpInside)
//
//    self.view.addSubview(button)
//
//  }
//
//  func pressed(sender: UIButton) {
//    var alertView = UIAlertView()
//    alertView.addButtonWithTitle("OK")
//    alertView.title = "title"
//    alertView.message = "message"
//    alertView.show()

    self.view = MKMapView()

    let button = UIButton()
    button.setTitle("Amazing", forState: .Normal)
    button.setTitleColor(UIColor.blueColor(), forState: .Normal)
    button.frame = CGRect(origin: CGPoint(x: 100, y: 200), size: CGSize(width: 200, height: 200))
    button.translatesAutoresizingMaskIntoConstraints = false
    
    self.view.addSubview(button)

    let topConstraint = button.topAnchor.constraintEqualToAnchor(self.view.topAnchor)
    let leadingConstraint = button.leadingAnchor.constraintEqualToAnchor(self.view.leadingAnchor)
    let trallingConstraint = button.trailingAnchor.constraintEqualToAnchor(self.view.trailingAnchor)
    
    topConstraint.active = true
    leadingConstraint.active = true
    trallingConstraint.active = true
    
  }

}
