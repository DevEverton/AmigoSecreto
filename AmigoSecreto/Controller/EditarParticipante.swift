//
//  EditarParticipante.swift
//  AmigoSecreto
//
//  Created by Everton Carneiro on 22/11/17.
//  Copyright © 2017 Everton. All rights reserved.
//

import UIKit

class EditarParticipante: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var editarFoto: UIImageView!
    @IBOutlet weak var nomeTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var preferenciasTextField: UITextField!
    @IBOutlet weak var calcadoTextField: UITextField!
    @IBOutlet weak var camisaTextField: UITextField!
    @IBOutlet weak var calcaTextField: UITextField!
    
    var calcadoPicker = UIPickerView()
    var camisaPicker = UIPickerView()
    var calcaPicker = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        editarFoto.image = #imageLiteral(resourceName: "profileLarger").circle
        
        pickerViewDelegate(calcadoPicker)
        pickerViewDelegate(camisaPicker)
        pickerViewDelegate(calcaPicker)

        calcadoTextField.inputView = calcadoPicker
        camisaTextField.inputView = camisaPicker
        calcaTextField.inputView = calcaPicker
        changeColor(of: calcadoPicker, to: .white)
        changeColor(of: camisaPicker, to: .white)
        changeColor(of: calcaPicker, to: .white)

    }
    
    func changeColor(of pickerView: UIPickerView, to color: UIColor) {
        pickerView.backgroundColor = color
        
    }
    
    func pickerViewDelegate(_ pickerView: UIPickerView){
        pickerView.dataSource = self
        pickerView.delegate =  self
    }

    @IBAction func addphoto(_ sender: Any) {
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == calcadoPicker {
            return Constants.calcado.count
        }else if pickerView == camisaPicker {
            return Constants.camisa.count
        }else if pickerView == calcaPicker{
            return Constants.calca.count
        }
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        if pickerView == calcadoPicker {
            return Constants.calcado[row]
        }else if pickerView == camisaPicker {
            return Constants.camisa[row]
        }else if pickerView == calcaPicker{
            return Constants.calca[row]
        }
        return "Erro"
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if pickerView == calcadoPicker {
            calcadoTextField.text = Constants.calcado[row]
        }else if pickerView == camisaPicker {
            camisaTextField.text = Constants.camisa[row]
        }else if pickerView == calcaPicker{
            calcaTextField.text = Constants.calca[row]
        }
        
        calcadoTextField.text = Constants.calcado[row]
        
        self.view.endEditing(false)

    }
    
    @IBAction func salvar(_ sender: Any) {
        
        guard let nome = nomeTextField.text, let email = emailTextField.text, let preferencias = preferenciasTextField.text, let calcado = calcadoTextField.text, let camisa = camisaTextField.text, let calca = calcaTextField.text else { fatalError() }
        
        Variables.participantes.append(Participante(nome: nome, email: email, foto: #imageLiteral(resourceName: "profile"), preferencias: preferencias, calcado: calcado, camisa: camisa, calca: calca))
        
        self.navigationController?.popViewController(animated: true)

    }
    
    
    


}
