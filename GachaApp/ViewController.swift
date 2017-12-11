
import UIKit

class ViewController: UIViewController {
    
    //変数の宣言(書いてもらうとこ)
    var number = 0
    @IBOutlet weak var otyaImageView: UIImageView!
    @IBOutlet weak var gachaButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //モンスターの初期設定
        otyaImageView.image = nil
        //ボタンの初期設定
        gachaButton.layer.cornerRadius = gachaButton.bounds.height / 2
        gachaButton.layer.masksToBounds = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tapGachaButton() {
        //乱数の表示
        number = Int(arc4random_uniform(100))
        //ガチャのアルゴリズム(書いてもらうとこ)
        if number < 60 {
            otyaImageView.image = UIImage(named: "")
        } else if number >= 60 && number < 80 {
            otyaImageView.image = UIImage(named: "")
        } else {
            otyaImageView.image = UIImage(named: "")
        }
        //アニメーション
        otyaImageView.alpha = 0.0
        UIImageView.animate(withDuration: 1.0) {
            self.otyaImageView.alpha = 1.0
        }
    }
    
}
