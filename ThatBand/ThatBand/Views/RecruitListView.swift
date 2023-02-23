//
//  RecruitView.swift
//  ThatBand
//
//  Created by 박성민 on 2023/02/23.
//

import SwiftUI

struct RecruitListView: View {
    var body: some View {
        VStack {
            ScrollView {
                ForEach(0...5, id: \.self) { _ in
                    RecruitCellView()
                        .padding(.vertical,4)
                }
            }
        }
    }
}

struct RecruitListView_Previews: PreviewProvider {
    static var previews: some View {
        RecruitListView()
    }
}
