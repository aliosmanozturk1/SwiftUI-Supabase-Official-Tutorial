//
//  AppView.swift
//  SwiftUI-Supabase-Official-Tutorial
//
//  Created by Ali Osman Öztürk on 28.04.2025.
//

import SwiftUI

struct AppView: View {
  @State var isAuthenticated = false

  var body: some View {
    Group {
      if isAuthenticated {
        ProfileView()
      } else {
        AuthView()
      }
    }
    .task {
      for await state in supabase.auth.authStateChanges {
        if [.initialSession, .signedIn, .signedOut].contains(state.event) {
          isAuthenticated = state.session != nil
        }
      }
    }
  }
}

#Preview {
    AppView()
}
