
//  TutorialView.swift
//  afterus
//
//  Created by Rodolfo Pigna on 18/11/21.
//

import Foundation
import SwiftUI

struct MapsView: View {

//    @State  var appSetupState = "App NOT setup ☹️"
//
//    // #1
//    @AppStorage("needsAppOnboarding") private var needsAppOnboarding: Bool = true

    var body: some View {
        Text("")
    } }
        // #2
//        mainView.onAppear {
//
//            if !needsAppOnboarding {
//                // Scenario #2: User has completed app onboarding
//                appSetupState = "App setup 😀"
//            }
//        }
//
//    }
//
//}
//
//extension MapsView {
//
//    private var mainView: some View {
//        VStack {
//            Spacer()
//            Button(action: {
//                needsAppOnboarding = true
//            }) {
//                Text("Reset Onboarding")
//                .padding(.horizontal, 40)
//                .padding(.vertical, 15)
//                .font(Font.title2.bold().lowercaseSmallCaps())
//            }
//            .background(Color.black)
//            .foregroundColor(.white)
//            .cornerRadius(40)
//
//            // #1
//            .sheet(isPresented:$needsAppOnboarding) {
//
//                // Scenario #1: User has NOT completed app onboarding
//                OnboardingView()
//            }
//
//            // #2
//            .onChange(of: needsAppOnboarding) { needsAppOnboarding in
//
//                if !needsAppOnboarding {
//
//                    // Scenario #2: User has completed app onboarding during current app launch
//                    appSetupState = "App setup 😀"
//                }
//            }
//            Spacer()
//            Text(appSetupState)
//            Spacer()
//        }
//    }
//}
//
//struct OnboardingView: View {
//
//    var body: some View {
//
//        // #1
//        VStack {
//            Spacer(minLength: 150)
//            Image(systemName: "wand.and.stars")
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 80, height: 80, alignment: .center)
//            Text("Welcome To My App")
//                .font(Font.title2.bold().lowercaseSmallCaps())
//                .multilineTextAlignment(.center)
//            Spacer(minLength: 60)
//            Text("Something something this app 🤪")
//            Spacer(minLength: 30)
//            Text("And another something!")
//            Spacer(minLength: 30)
//            Text("And finally 🥳...some...thing")
//
//            // #2
//            OnboardingButton()
//        }
//        .background(Color.gray)
//        .foregroundColor(.white)
//        .ignoresSafeArea(.all, edges: .all)
//    }
//}
//
//struct OnboardingButton: View {
//
//    // #1
//    @AppStorage("needsAppOnboarding") var needsAppOnboarding: Bool = true
//
//    var body: some View {
//        GeometryReader { proxy in
//            LazyHStack {
//                Button(action: {
//
//                    // #2
//                    needsAppOnboarding = false
//                }) {
//                    Text("Finish Setup")
//                    .padding(.horizontal, 40)
//                    .padding(.vertical, 15)
//                    .font(Font.title2.bold().lowercaseSmallCaps())
//                }
//                .background(Color.white)
//                .foregroundColor(.black)
//                .cornerRadius(40)
//                .frame(minWidth: 0, maxWidth: proxy.size.width-40)
//            }
//            .frame(width: proxy.size.width, height: proxy.size.height/1.5)
//        }
//    }
//}
