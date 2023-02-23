//
//  RecruitDetailView.swift
//  ThatBand
//
//  Created by 박성민 on 2023/02/23.
//

import SwiftUI

struct RecruitDetailView: View {
    @State var text: String = "위시플랜과 함께할 키보드와 드러머 구합니다."
    var body: some View {
        VStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 15) {
                    HStack {
                        Text("팀원모집")
                            .padding(3)
                            .overlay {
                                RoundedRectangle(cornerRadius: 5)
                                    .foregroundColor(.gray)
                                    .opacity(0.2)
                            }
                        Text("기타,베이스")
                            .padding(3)
                            .overlay {
                                RoundedRectangle(cornerRadius: 5)
                                    .foregroundColor(.gray)
                                    .opacity(0.2)
                            }
                    }
                    
                    Text(text)
                        .font(.title2)
                        .bold()
                    
                    HStack(alignment: .center) {
                        Circle()
                            .frame(width: 4)
                        Text("햄뿡이")
                            .font(.footnote)
                        Image(systemName: "clock")
                            .font(.footnote)
                        Text("1일전")
                            .font(.footnote)
                        Image(systemName: "bubble.left")
                            .font(.footnote)
                        Text("10")
                            .font(.footnote)
                        Spacer()
                    }
                    
                    Divider()
                    
                    Text("힘차게 대고, 광야에서 인간이 뛰노는 길을 만물은 사라지지 봄바람이다. 영원히 얼마나 원대하고, 불어 새 평화스러운 그것을 바로 가슴이 이것이다. 새 있는 긴지라 노래하며 구할 열락의 남는 작고 사막이다. 같은 맺어, 되는 힘있다. 영락과 열매를 물방아 것이다. 불어 그러므로 아니더면, 불어 있는 위하여 얼마나 생명을 풀이 말이다. 열매를 것은 뜨고, 것이다. 뜨고, 노래하며 봄날의 없으면 얼마나 귀는 불러 보라. 온갖 얼음과 그들은 가장 그들은 꽃 생생하며, 같으며, 이상, 있는가? 행복스럽고 청춘에서만 가진 눈에 보이는 붙잡아 아니다. 든 보이는 방황하여도, 사막이다.")
                    
                    Divider()
                    
                    HStack {
                        Text("댓글")
                        Text("10")
                    }
                    ForEach(0...9, id: \.self) { _ in
                        Text("댓글입니다")
                    }
                }
            }
            .padding(.horizontal, 15)
            
            Spacer()
            Text("댓글 입력하는 곳입니다.")
        }
    }
}

struct RecruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecruitDetailView()
    }
}
