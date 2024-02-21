//
//  CatInfoController.swift
//  Assignment 7
//
//  Created by Owner on 2/20/24.
//

import UIKit

class CatInfoController: UIViewController {
    
    @IBOutlet weak var catImageView: UIImageView!
    @IBOutlet weak var catInfoLabel: UILabel!
    
    var catName: String?
    var catLocation: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let name = catName, let location = catLocation {
            var infoText = ""
            var imageName = ""
            switch name {
            case "#1 Tiger *War Eagle!*":
                imageName = "Tiger"
                infoText = """
                Tiger (Panthera tigris)
                Weight: 165 to 715 pounds (75-325 kg)
                Body length: 59 to 90 inches (150-230 cm)
                Tail Length: 35 to 43 inches (90-110 cm)
                Location: \(location)
                Conservation Status: Endangered
                """
            case "#2 Lion":
                imageName = "Lion"
                infoText = """
                Lion (Panthera leo)
                Weight: 240 to 600 pounds (110-272 kg)
                Body length: 54 to 98 inches (137-250 cm)
                Tail Length: 24 to 40 inches (60-100 cm)
                Location: \(location)
                Conservation Status: Vulnerable
                """
            case "#3 Jaguar":
                imageName = "Jaguar"
                infoText = """
               Jaguar (Panthera onca)
               Weight: 80 to 300 pounds (36-136 kg)
               Body length: 43 to 67 inches (110-170 cm)
               Tail Length: 17 to 31 inches (44-80 cm)
               Location: North & South America
               Conservation Status: Near Threatened
               """
            case "#4 Leopard":
                imageName = "Leopard"
                infoText = """
               Leopard (Panthera pardus)
               Weight: 38 to 200 pounds (17-90 kg)
               Body length: 36 to 75 inches (91-191 cm)
               Tail Length: 20 to 40 inches (51-101 cm)
               Location: Africa, Asia
               Conservation Status: Vulnerable
               """
            case "#5 Puma":
                imageName = "Puma"
                infoText = """
               Puma (Puma concolor)
               Weight: 66 to 175 pounds (30-80 kg)
               Body length: 40 to 60 inches (100-150 cm)
               Tail Length: 24 to 36 inches (60-90 cm)
               Location: North & South America
               Conservation Status: Least Concern
               """
            case "#6 Cheetah":
                imageName = "Cheetah"
                infoText = """
               Cheetah (Acinonyx jubatus)
               Weight:  77 to 145 pounds (35-65 kg)
               Body length: 45 to 55 inches (113-140 cm)
               Tail Length: 24 to 33 inches (60-84 cm)
               Location: Africa, Asia
               Conservation Status: Vulnerable
               """
            case "#7 Snow Leopard":
                imageName = "Snow"
                infoText = """
               Snow Leopard (Panthera uncia)
               Weight: 66 to 110 pounds (30-50 kg)
               Body length: 35 to 47 inches (90-120 cm)
               Tail Length: 31 to 40 inches (80-100 cm)
               Location: Asia
               Conservation Status: Vulnerable
               """
            case "#8 Eurasian Lynx":
                imageName = "Lynx"
                infoText = """
               Eurasian Lynx (Lynx lynx)
               Weight: 38 to 55 pounds (17-25 kg)
               Body length: 35 to 47 inches (90-120 cm)
               Tail Length: 7 to 9 inches (19-23 cm)
               Location: Europe & Asia
               Conservation Status: Least Concern
               """
            case "#9 Sunda Clouded Leopard":
                imageName = "Sunda"
                infoText = """
               Sunda Clouded Leopard (Neofelis diardi)
               Weight: 24 to 55 pounds (11-25 kg)
               Body length: 27 to 43 inches (69-108 cm)
               Tail Length: 24 to 36 inches (61-91 cm)
               Location: Asia
               Conservation Status: Vulnerable
               """
            case "#10 Mainland Clouded Leopard":
                imageName = "Mainland"
                infoText = """
               Mainland Clouded Leopard (Neofelis nebulosa)
               Weight: 35 to 50 pounds (16-23 kg)
               Body length: 27 to 43 inches (69-108 cm)
               Tail Length: 24 to 36 inches (61-91 cm)
               Location: Asia
               Conservation Status: Vulnerable
               """
                
            default:
                imageName = name.lowercased() + "_image"
                infoText = "Name: \(name)\nLocation: \(location)"
            }
            catImageView.image = UIImage(named: imageName)
            catInfoLabel.text = infoText
        } else {
            catImageView.image = nil
            catInfoLabel.text = "No cat information available"
        }
    }
    
    @IBAction func returnButtonTapped(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
