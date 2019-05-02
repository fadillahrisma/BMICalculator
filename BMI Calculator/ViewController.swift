//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Risma Fadillah on 24/04/19.
//  Copyright © 2019 Risma Fadillah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var judul: UILabel!
    
    @IBOutlet weak var valueWeightSlider: UISlider!
    
    @IBOutlet weak var valueHeightSlider: UISlider!
    
    @IBAction func sliderBerat(_ sender: Any) {
        let weightBerat = String (valueWeightSlider.value)
        
        jumlahBerat.text = "\(weightBerat) Kg"
        
        BMICalculator(weightInKg: Float(valueWeightSlider.value), yourHeightInCm: Float(valueHeightSlider.value))
    }
    
    @IBAction func sliderTinggi(_ sender: Any) {
        let heightTinggi = String (valueHeightSlider.value)
        
        jumlahTinggi.text = "\(heightTinggi) cm"
        
        BMICalculator(weightInKg: Float (valueHeightSlider.value), yourHeightInCm: Float (valueHeightSlider.value))
    }
    
    @IBAction func lampuOnOff(_ sender: UISegmentedControl) {
        if tulisanOnOff.selectedSegmentIndex == 0 {
            self.view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            judul.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            valueBMI.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            idealAtauTidak.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            jumlahBerat.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            jumlahTinggi.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            tulisanHeight.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            tulisanWeight.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            BMIAja.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        } else if tulisanOnOff.selectedSegmentIndex == 1 {
            self.view.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            judul.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            valueBMI.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            idealAtauTidak.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            jumlahBerat.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            jumlahTinggi.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            tulisanHeight.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            tulisanWeight.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            BMIAja.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        
    }
    
    @IBOutlet weak var tulisanWeight: UILabel!
   
    @IBOutlet weak var tulisanHeight: UILabel!
    
    @IBOutlet weak var valueBMI: UILabel!
    
    @IBOutlet weak var idealAtauTidak: UILabel!
    
    @IBOutlet weak var jumlahBerat: UILabel!
    
    @IBOutlet weak var jumlahTinggi: UILabel!
    
    @IBOutlet weak var tulisanOnOff: UISegmentedControl!
    
    @IBOutlet weak var BMIAja: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        valueBMI.text = "Kg/m2"
        idealAtauTidak.text = ""
    }

    func BMICalculator (weightInKg : Float, yourHeightInCm : Float){
        let hasil = weightInKg/(yourHeightInCm*yourHeightInCm)
         let resultBounded = String(format: "%.2f", hasil)
        
    valueBMI.text = "\(resultBounded) Kg/m2"
            if  hasil > 27 {
                idealAtauTidak.text = "you are obessed"
                idealAtauTidak.textColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        } else if hasil > 18 {
            idealAtauTidak.text = "normal"
            idealAtauTidak.textColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        } else {
            idealAtauTidak.text = "kurang gizi"
            idealAtauTidak.textColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        }
    
    
}

}


