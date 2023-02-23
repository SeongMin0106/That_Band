//
//  AddRecruitView.swift
//  ThatBand
//
//  Created by 박성민 on 2023/02/23.
//

import SwiftUI

struct AddRecruitView: View {
    
    @State private var title: String = ""
    
    @State private var selection: String = "팀원 모집"
    
    @State private var isVocalChecked: Bool = true
    @State private var isGuitarChecked: Bool = false
    @State private var isBassChecked: Bool = false
    @State private var isDrumChecked: Bool = false
    @State private var isKeyboardChecked: Bool = false
    
    @State private var partArray: [String] = ["Drum", "Vocal"]



    
    let filterOptions = ["팀원 모집", "밴드 구직"]

    var body: some View {
        VStack {
            ScrollView() {
                VStack(alignment: .leading) {
                    
                    Text("title")
                        .font(.title2)
                    TextField("제목을 입력해주세요", text: $title, axis: .vertical)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Text("공고")
                        .font(.title2)
                    Picker(selection: $selection,
                           label: Text("picker"),
                           content: {
                        ForEach(filterOptions.indices, id: \.self) { index in
                            Text(filterOptions[index])
                                .tag(filterOptions[index])
                        }
                    })
                    .pickerStyle(SegmentedPickerStyle())
                    
                    Text("파트")
                        .font(.title2)
                    VStack(alignment: .center) {
                        HStack() {
                            Button {
                                print("\(partArray)")
                                isVocalChecked.toggle()
                                if isBassChecked {
                                    partArray.append("Vocal")
                                } else {
                                    partArray.removeAll(where: {$0 == "Vocal"})
                                }
                            } label: {
                                HStack {
                                    Image(systemName: isVocalChecked ? "checkmark" : "")
                                        .frame(width: 18.5, height: 18.5)
                                        .padding(3)
                                        .overlay {
                                            RoundedRectangle(cornerRadius: 5)
                                                .stroke(Color.gray, lineWidth: 1)
                                                .opacity(0.2)
                                        }
                                    Text("보컬")
                                        .foregroundColor(isVocalChecked ? .accentColor : .black)
                                }
                            }
                            Text("기타")
                            Text("베이스")
                            Text("드럼")
                            Text("키보드")
                        }
                    }
                    .padding(.top, 2)
                    .frame(maxWidth: .infinity)
                    
                }
            }
            .padding(.horizontal, 15)
        }
    }
}

struct AddRecruitView_Previews: PreviewProvider {
    static var previews: some View {
        AddRecruitView()
    }
}
