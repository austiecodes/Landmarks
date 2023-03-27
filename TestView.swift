//
//  TestView.swift
//  Landmarks
//
//  Created by Austie Chou on 3/27/23.
//

import SwiftUI

struct Testsegment {
    var line: CGPoint
    var curve: CGPoint
    var control: CGPoint
}



struct TestView: View {
    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: 90, y: 90))
        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
