

import UIKit

class ViewController: UIViewController {
    
    var iscolor: Bool = true // Variavel do tipo booleano para utilizar dentro da troca de cores.

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var Ballimage: UIImageView!
        let imGBall = [ #imageLiteral(resourceName: "ball3") , #imageLiteral(resourceName: "ball5") , #imageLiteral(resourceName: "ball2") , #imageLiteral(resourceName: "ball3") , #imageLiteral(resourceName: "ball5") ] // Constante com array de imagens literais
    
    @IBAction func Askbutton(_ sender: UIButton) {
        
        Ballimage.image = imGBall [Int.random(in:0...4)]
    }
    
    @IBAction func colorfund(_ sender: Any) {
        if iscolor {
            view.backgroundColor = UIColor.white
            iscolor = false
        } else {
            view.backgroundColor = UIColor.black
            iscolor = true
        }
    }
}

