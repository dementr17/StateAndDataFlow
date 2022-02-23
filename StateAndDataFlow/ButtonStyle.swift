////
////  ButtonStyle.swift
////  StateAndDataFlow
////
////  Created by Дмитрий Чепанов on 23.02.2022.
////
//
//import SwiftUI
//
//struct ButtonViewModifier: ViewModifier {
//    let color: Color
////    @FocusState var isInputActive: Bool
//
//    func body(content: Content) -> some View {
//        content
//            .frame(width: 200, height: 60)
//            .background(color)
//            .cornerRadius(20)
//            .overlay(
//                RoundedRectangle(cornerRadius: 20)
//                    .stroke(Color.black, lineWidth: 4)
//            )
//
//    }
//}
//
//extension Button {
//    func buttonStyle() -> some View {
//        ModifiedContent(
//            content: self,
//            modifier: ButtonViewModifier(color: .white)
//        )
//    }
//}
//
//struct TextViewModifier: ViewModifier {
////    let color: Color
//
//    func body(content: Content) -> some View {
//        content
//            .font(.title)
////            .fontWeight(.bold)
////            .foregroundColor(.white)
//
//    }
//}
//
//extension Text {
//    func textStyle() -> some View {
//        ModifiedContent(
//            content: self,
//            modifier: TextViewModifier()
//        )
//    }
//}
