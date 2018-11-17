//
//  InterfaceController.swift
//  Tic-Tac-Watch WatchKit Extension
//
//  Created by Paul Johannes Aru on 16.11.16.
//  Copyright © 2016 Progra. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    
    
    @IBOutlet var Silt: WKInterfaceLabel!
    @IBOutlet var Nupp_1: WKInterfaceButton!
    @IBOutlet var Nupp_2: WKInterfaceButton!
    @IBOutlet var Nupp_3: WKInterfaceButton!
    @IBOutlet var Nupp_4: WKInterfaceButton!
    @IBOutlet var Nupp_5: WKInterfaceButton!
    @IBOutlet var Nupp_6: WKInterfaceButton!
    @IBOutlet var Nupp_7: WKInterfaceButton!
    @IBOutlet var Nupp_8: WKInterfaceButton!
    @IBOutlet var Nupp_9: WKInterfaceButton!
    
    var Ruutude_Väärtused = ["A","B","C","D","E","F","G","H","I","J"]
    var Mängija_Kord = true
    var Kord = 0
    var Mäng_Läbi = false
    var Tava_Värv = (UIColor(red: (34/255.0), green: (34/255.0), blue: (35/255.0), alpha: 1.0))
    var Raskus_Tase = "Raske"
    
    
    
    func Kerge_Tase() {
            var Suvaline = arc4random()/400000000
            if Suvaline == 1 && Ruutude_Väärtused[1] != "X" && Ruutude_Väärtused[1] != "O"{
                Ruutude_Väärtused[1] = Nuti_Väärtus(Ruut: Nupp_1)
            } else if Suvaline == 2 && Ruutude_Väärtused[2] != "X" && Ruutude_Väärtused[2] != "O"{
                Ruutude_Väärtused[2] = Nuti_Väärtus(Ruut: Nupp_2)
            } else if Suvaline == 3 && Ruutude_Väärtused[3] != "X" && Ruutude_Väärtused[3] != "O"{
                Ruutude_Väärtused[3] = Nuti_Väärtus(Ruut: Nupp_3)
            }  else if Suvaline == 4 && Ruutude_Väärtused[4] != "X" && Ruutude_Väärtused[4] != "O"{
                Ruutude_Väärtused[4] = Nuti_Väärtus(Ruut: Nupp_4)
            } else if Suvaline == 5 && Ruutude_Väärtused[5] != "X" && Ruutude_Väärtused[5] != "O"{
                Ruutude_Väärtused[5] = Nuti_Väärtus(Ruut: Nupp_5)
            } else if Suvaline == 6 && Ruutude_Väärtused[6] != "X" && Ruutude_Väärtused[6] != "O"{
                Ruutude_Väärtused[6] = Nuti_Väärtus(Ruut: Nupp_6)
            } else if Suvaline == 7 && Ruutude_Väärtused[7] != "X" && Ruutude_Väärtused[7] != "O"{
                Ruutude_Väärtused[7] = Nuti_Väärtus(Ruut: Nupp_7)
            } else if Suvaline == 8 && Ruutude_Väärtused[8] != "X" && Ruutude_Väärtused[8] != "O"{
                Ruutude_Väärtused[8] = Nuti_Väärtus(Ruut: Nupp_8)
            } else if Suvaline == 9 && Ruutude_Väärtused[9] != "X" && Ruutude_Väärtused[9] != "O"{
                Ruutude_Väärtused[9] = Nuti_Väärtus(Ruut: Nupp_9)
            }
    }
    
    func Raske_Tase() {
        if Ruutude_Väärtused[2] == "X" && Ruutude_Väärtused[3] == "X" && Ruutude_Väärtused[1] == "B" || Ruutude_Väärtused[4] == "X" && Ruutude_Väärtused[7] == "X" && Ruutude_Väärtused[1] == "B" || Ruutude_Väärtused[5] == "X" && Ruutude_Väärtused[9] == "X" && Ruutude_Väärtused[1] == "B" {
            Ruutude_Väärtused[1] = Nuti_Väärtus(Ruut: Nupp_1)
        } else if Ruutude_Väärtused[1] == "X" && Ruutude_Väärtused[3] == "X" && Ruutude_Väärtused[2] == "C" || Ruutude_Väärtused[5] == "X" && Ruutude_Väärtused[8] == "X" && Ruutude_Väärtused[2] == "C"{
            Ruutude_Väärtused[2] = Nuti_Väärtus(Ruut: Nupp_2)
        } else if Ruutude_Väärtused[1] == "X" && Ruutude_Väärtused[2] == "X" && Ruutude_Väärtused[3] == "D" || Ruutude_Väärtused[6] == "X" && Ruutude_Väärtused[9] == "X" && Ruutude_Väärtused[3] == "D" || Ruutude_Väärtused[5] == "X" && Ruutude_Väärtused[7] == "X" && Ruutude_Väärtused[3] == "D" {
            Ruutude_Väärtused[3] = Nuti_Väärtus(Ruut: Nupp_3)
        } else if Ruutude_Väärtused[5] == "X" && Ruutude_Väärtused[6] == "X" && Ruutude_Väärtused[4] == "E" || Ruutude_Väärtused[1] == "X" && Ruutude_Väärtused[7] == "X" && Ruutude_Väärtused[4] == "E" {
            Ruutude_Väärtused[4] = Nuti_Väärtus(Ruut: Nupp_4)
        } else if Ruutude_Väärtused[4] == "X" && Ruutude_Väärtused[6] == "X" && Ruutude_Väärtused[5] == "F" || Ruutude_Väärtused[2] == "X" && Ruutude_Väärtused[8] == "X" && Ruutude_Väärtused[5] == "F" || Ruutude_Väärtused[1] == "X" && Ruutude_Väärtused[9] == "X" && Ruutude_Väärtused[5] == "F" || Ruutude_Väärtused[3] == "X" && Ruutude_Väärtused[7] == "X" && Ruutude_Väärtused[5] == "F" {
            Ruutude_Väärtused[5] = Nuti_Väärtus(Ruut: Nupp_5)
        } else if Ruutude_Väärtused[4] == "X" && Ruutude_Väärtused[5] == "X" && Ruutude_Väärtused[6] == "G" || Ruutude_Väärtused[3] == "X" && Ruutude_Väärtused[9] == "X" && Ruutude_Väärtused[6] == "G" {
            Ruutude_Väärtused[6] = Nuti_Väärtus(Ruut: Nupp_6)
        } else if Ruutude_Väärtused[8] == "X" && Ruutude_Väärtused[9] == "X" && Ruutude_Väärtused[7] == "H" || Ruutude_Väärtused[1] == "X" && Ruutude_Väärtused[4] == "X" && Ruutude_Väärtused[7] == "H" || Ruutude_Väärtused[3] == "X" && Ruutude_Väärtused[5] == "X" && Ruutude_Väärtused[7] == "H" {
            Ruutude_Väärtused[7] = Nuti_Väärtus(Ruut: Nupp_7)
        } else if Ruutude_Väärtused[7] == "X" && Ruutude_Väärtused[9] == "X" && Ruutude_Väärtused[8] == "I" || Ruutude_Väärtused[2] == "X" && Ruutude_Väärtused[5] == "X" && Ruutude_Väärtused[8] == "I" {
            Ruutude_Väärtused[8] = Nuti_Väärtus(Ruut: Nupp_8)
        } else if Ruutude_Väärtused[7] == "X" && Ruutude_Väärtused[8] == "X" && Ruutude_Väärtused[9] == "J" || Ruutude_Väärtused[3] == "X" && Ruutude_Väärtused[6] == "X" && Ruutude_Väärtused[9] == "J" || Ruutude_Väärtused[1] == "X" && Ruutude_Väärtused[5] == "X" && Ruutude_Väärtused[9] == "J" {
            Ruutude_Väärtused[9] = Nuti_Väärtus(Ruut: Nupp_9)
        } else {
            Kerge_Tase()
        }
    }
    
    func Nuti_Arvuti() {
        while Mängija_Kord == false {
            if Raskus_Tase == "Kerge" {
                Kerge_Tase()
            } else if Raskus_Tase == "Raske" {
                Raske_Tase()
            }
            Nuti_Võit()
        }
    }

    func Hoiatus(Teade: String) {
        let Nõustu = WKAlertAction(title: "Okei", style: .default) {}
        let Tühista = WKAlertAction(title: "", style: .cancel) {}
        presentAlert(withTitle: "Hoiatus:", message: Teade, preferredStyle: .actionSheet, actions: [Nõustu,Tühista])
    }
    
    func Nuti_Võit() {
        if  (Ruutude_Väärtused[1], Ruutude_Väärtused[2]) == (Ruutude_Väärtused[2], Ruutude_Väärtused[3]) {
            Nuti_Võit_2(Üks: Nupp_1, Kaks: Nupp_2, Kolm: Nupp_3, Võitja: Ruutude_Väärtused[1])
        } else if (Ruutude_Väärtused[4], Ruutude_Väärtused[5]) == (Ruutude_Väärtused[5], Ruutude_Väärtused[6]) {
            Nuti_Võit_2(Üks: Nupp_4, Kaks: Nupp_5, Kolm: Nupp_6, Võitja: Ruutude_Väärtused[4])
        } else if (Ruutude_Väärtused[7], Ruutude_Väärtused[8]) == (Ruutude_Väärtused[8], Ruutude_Väärtused[9]) {
            Nuti_Võit_2(Üks: Nupp_7, Kaks: Nupp_8, Kolm: Nupp_9, Võitja: Ruutude_Väärtused[7])
        } else if (Ruutude_Väärtused[1], Ruutude_Väärtused[4]) == (Ruutude_Väärtused[4], Ruutude_Väärtused[7]) {
            Nuti_Võit_2(Üks: Nupp_1, Kaks: Nupp_4, Kolm: Nupp_7, Võitja: Ruutude_Väärtused[1])
        } else if (Ruutude_Väärtused[2], Ruutude_Väärtused[5]) == (Ruutude_Väärtused[5], Ruutude_Väärtused[8]) {
            Nuti_Võit_2(Üks: Nupp_2, Kaks: Nupp_5, Kolm: Nupp_8, Võitja: Ruutude_Väärtused[2])
        } else if (Ruutude_Väärtused[3], Ruutude_Väärtused[6]) == (Ruutude_Väärtused[6], Ruutude_Väärtused[9]) {
            Nuti_Võit_2(Üks: Nupp_3, Kaks: Nupp_6, Kolm: Nupp_9, Võitja: Ruutude_Väärtused[3])
        } else if (Ruutude_Väärtused[1], Ruutude_Väärtused[5]) == (Ruutude_Väärtused[5], Ruutude_Väärtused[9]) {
            Nuti_Võit_2(Üks: Nupp_1, Kaks: Nupp_5, Kolm: Nupp_9, Võitja: Ruutude_Väärtused[1])
        } else if (Ruutude_Väärtused[3], Ruutude_Väärtused[5]) == (Ruutude_Väärtused[5], Ruutude_Väärtused[7]) {
            Nuti_Võit_2(Üks: Nupp_3, Kaks: Nupp_5, Kolm: Nupp_7, Võitja: Ruutude_Väärtused[3])
        } else if Kord == 9 {
            Mäng_Läbi = true
            Riba_Teade(Teade: "Viik", Aeg: 2.5)
        }
    }
    
    func Nuti_Võit_2 (Üks: WKInterfaceButton, Kaks: WKInterfaceButton, Kolm: WKInterfaceButton, Võitja: String) {
        Üks.setBackgroundColor(UIColor.green)
        Kaks.setBackgroundColor(UIColor.green)
        Kolm.setBackgroundColor(UIColor.green)
        var Tekst = Võitja + " Võitis"
        Riba_Teade(Teade: Tekst, Aeg: 2.5)
        Mäng_Läbi = true
    }
    
    
    
    @IBAction func Vajutati_1() {
        Nuti_Vajutus(Number: 1, Täht: "B", Nupp: Nupp_1)
    }
    @IBAction func Vajutati_2() {
        Nuti_Vajutus(Number: 2, Täht: "C", Nupp: Nupp_2)
    }
    @IBAction func Vajutati_3() {
        Nuti_Vajutus(Number: 3, Täht: "D", Nupp: Nupp_3)
    }
    @IBAction func Vajutati_4() {
        Nuti_Vajutus(Number: 4, Täht: "E", Nupp: Nupp_4)
    }
    @IBAction func Vajutati_5() {
        Nuti_Vajutus(Number: 5, Täht: "F", Nupp: Nupp_5)
    }
    @IBAction func Vajutati_6() {
        Nuti_Vajutus(Number: 6, Täht: "G", Nupp: Nupp_6)
    }
    @IBAction func Vajutati_7() {
        Nuti_Vajutus(Number: 7, Täht: "H", Nupp: Nupp_7)
    }
    @IBAction func Vajutati_8() {
        Nuti_Vajutus(Number: 8, Täht: "I", Nupp: Nupp_8)
    }
    @IBAction func Vajutati_9() {
        Nuti_Vajutus(Number: 9, Täht: "J", Nupp: Nupp_9)
    }
    
    func Nuti_Väärtus(Ruut: WKInterfaceButton) -> String{
        var Väärtus = " "
        if Mängija_Kord == true {
            Ruut.setTitle("X")
            Mängija_Kord = false
            Väärtus = "X"
        } else {
            Ruut.setTitle("O")
            Mängija_Kord = true
            Väärtus = "O"
        }
        Kord=Kord+1
        return Väärtus
    }
    
    func Nuti_Vajutus(Number: Int, Täht: String, Nupp: WKInterfaceButton) {
        if Mäng_Läbi == false && Ruutude_Väärtused[Number] != Täht {
            Hoiatus(Teade: "Ruut on juba täis!")
        } else if Mäng_Läbi == true {
            Hoiatus(Teade: "Mäng on Läbi!")
        } else {
            Ruutude_Väärtused[Number] = Nuti_Väärtus(Ruut: Nupp)
        }
        Nuti_Võit()
        if Mäng_Läbi == false && Mängija_Kord == false {
            Nuti_Arvuti()
        }
    }

    @IBAction func Uus_Mäng_Vajutati() {
        Ruutude_Väärtused = ["A","B","C","D","E","F","G","H","I","J"]
        Mängija_Kord = true
        Kord = 0
        Mäng_Läbi = false
        Nupp_1.setTitle(" ")
        Nupp_2.setTitle(" ")
        Nupp_3.setTitle(" ")
        Nupp_4.setTitle(" ")
        Nupp_5.setTitle(" ")
        Nupp_6.setTitle(" ")
        Nupp_7.setTitle(" ")
        Nupp_8.setTitle(" ")
        Nupp_9.setTitle(" ")
        
        Nupp_1.setBackgroundColor(Tava_Värv)
        Nupp_2.setBackgroundColor(Tava_Värv)
        Nupp_3.setBackgroundColor(Tava_Värv)
        Nupp_4.setBackgroundColor(Tava_Värv)
        Nupp_5.setBackgroundColor(Tava_Värv)
        Nupp_6.setBackgroundColor(Tava_Värv)
        Nupp_7.setBackgroundColor(Tava_Värv)
        Nupp_8.setBackgroundColor(Tava_Värv)
        Nupp_9.setBackgroundColor(Tava_Värv)
        
        Riba_Teade(Teade: "Uus Mäng!", Aeg: 2.5)
    }
    
    @IBAction func Raskus_Tase_Vajutati() {
        if Raskus_Tase == "Raske" {
            Raskus_Tase = "Kerge"
            Riba_Teade(Teade: "Kerge Tase Valitud", Aeg: 2.5)
        } else if Raskus_Tase == "Kerge" {
            Raskus_Tase = "Raske"
            Riba_Teade(Teade: "Raske Tase Valitud", Aeg: 2.5)
        }
    }
    
    func Riba_Teade(Teade: String, Aeg: TimeInterval) {
        Timer.scheduledTimer(timeInterval: Aeg, target: self, selector: #selector(Tühi_Silt), userInfo: nil, repeats: false)
        Silt.setText(Teade)
    }
    
    func Tühi_Silt() {
        Silt.setText("")
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
