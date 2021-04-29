//
//  Maths.swift
//  demo
//
//  Created by Maxime Britto on 29/04/2021.
//

import Foundation

func calculPuissance(nombre:Double, exposant:Double) -> Double {
    if exposant == 0 {
        return 1
    } else if exposant < 0 {
        return 1 / calculPuissance(nombre: nombre, exposant: -exposant)
    } else {
        // 4p2 = 4 * (4 * 1)
        return nombre * calculPuissance(nombre: nombre, exposant: exposant - 1)
    }
}
