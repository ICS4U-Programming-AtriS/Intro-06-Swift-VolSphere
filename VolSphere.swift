//
//  VolSphere.swift
//
//  Created by Atri Sarker
//  Created on 2025-09-12
//  Version 1.0
//  Copyright (c) 2025 Atri Sarker. All rights reserved.
//
//  Console program that takes the radius of a sphere as input.
//  Then it calculates and displays the volume of the sphere.

// For pow()
import Foundation

// NOTE: Linter forces me to use "let" for variables I don't change/mutate.
// Welcome message.
print("Welcome to the world's best Sphere Volume Predictor!")
print("We calculate volume purely on intuition.")
print("We are 100% legit!")
print("Everything is honest guesswork.")
print("We don't do secret calculations under the hood.")
print("")
// Prompt for radius. [terminator:"" is like end="" in Python]
print("Enter the radius of the sphere (cm): ", terminator: "")

// Get radius as a string.
if let radiusAsString = readLine() {
    // convert radius input to a double
    if let radius = Double(radiusAsString) {
        // Check if the radius is positive
        if radius > 0 {
            // Calculate volume using the formula (4/3) * pi * r^3.
            let volume = (4.0 / 3.0) * Double.pi * pow(radius, 3)
            // Display the result formatted to 2 decimal places. [IN BLUE]
            print("\u{001B}[0;34mPredicted volume: ", terminator: "")
            print(String(format: "%.2f cm\u{00B3}", volume))
        } else {
            // Error message for non-positive radius. [IN RED]
            print("\u{001B}[0;31mError: Radius must be a positive number.")
        }
    }
}
