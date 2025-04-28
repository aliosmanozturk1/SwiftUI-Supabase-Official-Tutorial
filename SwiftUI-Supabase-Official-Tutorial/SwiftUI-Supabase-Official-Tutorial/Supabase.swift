//
//  Supabase.swift
//  SwiftUI-Supabase-Official-Tutorial
//
//  Created by Ali Osman Öztürk on 28.04.2025.
//

import Foundation
import Supabase

let supabase = SupabaseClient(
  supabaseURL: URL(string: "YOUR_SUPABASE_URL")!,
  supabaseKey: "YOUR_SUPABASE_ANON_KEY"
)
