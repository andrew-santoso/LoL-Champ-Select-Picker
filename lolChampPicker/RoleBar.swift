//
//  Rolebar.swift
//  lolChampPicker
//
//  Created by Andrew Santoso on 11/11/26.
//

import SwiftUI

struct RoleBar: View {
    
    @Binding var selection: Role
    
    var body: some View {
        Picker("Role", selection: $selection) {
            ForEach(Role.allCases, id: \.self) { role in
                Text(role.shortName)
            }
        }
        .pickerStyle(.segmented)
    }
}
