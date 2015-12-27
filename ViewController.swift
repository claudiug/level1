import UIKit
import MapKit

class ViewController: UIViewController {
    let mapView: MKMapView = MKMapView()
    

  override func viewDidLoad() {
    super.viewDidLoad()
    self.view.backgroundColor = UIColor.lightGrayColor()
    print(self.view.bounds)
    self.view = mapView
    let button = UIButton()
    
    button.setTitle("Amazing", forState: .Normal)
    button.setTitleColor(UIColor.blueColor(), forState: .Normal)
    button.frame = CGRect(origin: CGPoint(x: 100, y: 200), size: CGSize(width: 200, height: 200))
    button.translatesAutoresizingMaskIntoConstraints = false
    
    self.view.addSubview(button)

//    let topConstraint = button.topAnchor.constraintEqualToAnchor(self.view.topAnchor)
    let topConstraint = button.topAnchor.constraintEqualToAnchor(topLayoutGuide.bottomAnchor, constant: 8)
//    let leadingConstraint = button.leadingAnchor.constraintEqualToAnchor(self.view.leadingAnchor)
//    let trallingConstraint = button.trailingAnchor.constraintEqualToAnchor(self.view.trailingAnchor)
    
    let margins = self.view.layoutMarginsGuide
    let leadingConstraint = button.leadingAnchor.constraintEqualToAnchor(margins.leadingAnchor)
    let trallingConstraint = button.trailingAnchor.constraintEqualToAnchor(margins.trailingAnchor)
    
    topConstraint.active = true
    leadingConstraint.active = true
    trallingConstraint.active = true
    
    button.addTarget(self, action: "changeMap", forControlEvents: .TouchUpInside)
  }
    
    func changeMap(sender: UIButton) {
       mapView.mapType = .Hybrid
    }

}
