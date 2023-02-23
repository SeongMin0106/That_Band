//
//  RecruitCellView.swift
//  ThatBand
//
//  Created by 박성민 on 2023/02/23.
//

import SwiftUI

struct RecruitCellView: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
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
                    Spacer()
                }
                // 게시물 제목
                // 한줄로 쭈욱 쓰고 넘어가면 ... 처리
                Text("서울 베이스 데려가시거나 같이하실분")
                    .bold()
                // 게시물 내용
                // 두줄이 넘어가면 ... 처리
                Text("옛날에 혼자 연습 어쩌구...어쩌구 저쩌구 저열씨굴아아하라 자라라라라 지이리릴 미미리리리")
                    .lineLimit(2)
                    .foregroundColor(.gray)
                
                Divider()
                    .padding(.bottom, 5)
                
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
                    Image(systemName: "bookmark")
                        .frame(height: UIScreen.main.bounds.size.width * 0.05)
                    
                }
            }
            .padding()
            .overlay {
                RoundedRectangle(cornerRadius: 5)
                    .stroke(Color.gray, lineWidth: 1)
                    .opacity(0.2)
            }
        }
        .padding(.horizontal, 15)
    }
}

struct RecruitCellView_Previews: PreviewProvider {
    static var previews: some View {
        RecruitCellView()
    }
}
