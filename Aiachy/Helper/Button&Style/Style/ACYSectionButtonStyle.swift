//
//  ACYSectionButtonStyle.swift
//  Aiachy
//
//  Created by Mert Türedü on 30.09.2023.
//

import Foundation
import SwiftUI

struct ACYSectionButtonStyle: ButtonStyle {
    
    @EnvironmentObject var aiachyState: AiachyState
    var isSelected: Bool
    
    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            makeRectangle(with: configuration)
            makeLabel(with: configuration)
        }
    }
    
}

extension ACYSectionButtonStyle {

    private func makeLabel(with configuration: Configuration) -> some View {
        return configuration.label
            .font(FontHandler.aiachyFont(.cinzelBlack11))
            .foregroundStyle(Color(ColorHandler.makeAiachyColor(aiachyState, aiachyColor: isSelected ? .secondColor : .fourthColor)))
    }
    private func makeRectangle(with configuration: Configuration) -> some View {
        let corner = isSelected ? 12.0 : 24.0
        let corner2 = isSelected ? 24.0 : 12.0
        return RoundedCorners(tl: corner , tr: corner2, bl: corner2, br: corner)
            .stroke(Color(ColorHandler.makeAiachyColor(aiachyState, aiachyColor: isSelected ? .secondColor : .fourthColor)))
            .background{
                Color(ColorHandler.makeAiachyColor(aiachyState, aiachyColor: isSelected ? .fourthColor : .backgroundColor))
                    .clipShape(RoundedCorners(tl: corner , tr: corner2, bl: corner2, br: corner))
            }
    }
}

struct RoundedCorners: Shape {
    var tl: CGFloat, tr: CGFloat, bl: CGFloat, br: CGFloat

    func path(in rect: CGRect) -> Path {
        var path = Path()

        let width = rect.size.width
        let height = rect.size.height

        // start from the top left corner
        path.move(to: CGPoint(x: 0, y: tl))
        path.addQuadCurve(to: CGPoint(x: tl, y: 0), control: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: width - tr, y: 0))
        path.addQuadCurve(to: CGPoint(x: width, y: tr), control: CGPoint(x: width, y: 0))
        path.addLine(to: CGPoint(x: width, y: height - br))
        path.addQuadCurve(to: CGPoint(x: width - br, y: height), control: CGPoint(x: width, y: height))
        path.addLine(to: CGPoint(x: bl, y: height))
        path.addQuadCurve(to: CGPoint(x: 0, y: height - bl), control: CGPoint(x: 0, y: height))
        path.closeSubpath()

        return path
    }
}
