import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorPick: UIColorWell!
    
    @IBOutlet weak var box: UIView!
    
    @IBOutlet weak var act: UIActivityIndicatorView!
    
    @IBOutlet weak var bottomPro: UIProgressView!
    
    @IBOutlet weak var midPRO: UIProgressView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
    }
    @IBAction func sw(_ sender: UISwitch) {
        if sender.isOn {
            act.startAnimating()
        } else {
            act.stopAnimating()
        }
    }
    @IBAction func tapped(_ sender: UIButton) {
        if let color = colorPick.selectedColor{
            box.backgroundColor = color
        }
    }
    @IBAction func slide(_ sender: UISlider) {
        let v = sender.value
        if v > 0.75 {
            bottomPro.progressTintColor = .red
        } else if v < 0.25 {
            bottomPro.progressTintColor = .green
        } else {
            bottomPro.progressTintColor = .blue
        }
        midPRO.progressTintColor = UIColor(red: CGFloat(v), green: CGFloat(v), blue: 0, alpha: 1)
        bottomPro.progress = v
        midPRO.progress = 1 - v
    }
    

}

