//
//  BookInfo.swift
//  Book
//
//  Created by HeecheolYoon on 2022/07/20.
//

import UIKit

struct BookInfo {
    
    let books: [Book] = [
        Book(bookTitle: "암살", coverImg: UIImage(named: "암살"), bgColor: .orange, rate: 9.8),
        Book(bookTitle: "7번방의 선물", coverImg: UIImage(named: "7번방의선물"), bgColor: .brown, rate: 9.9),
        Book(bookTitle: "겨울왕국2", coverImg: UIImage(named: "겨울왕국2"), bgColor: .cyan, rate: 7.8),
        Book(bookTitle: "광해", coverImg: UIImage(named: "광해"), bgColor: .green, rate: 6.8),
        Book(bookTitle: "괴물", coverImg: UIImage(named: "괴물"), bgColor: .systemPink, rate: 9.1),
        Book(bookTitle: "국제시장", coverImg: UIImage(named: "국제시장"), bgColor: .tintColor, rate: 4.4),
        Book(bookTitle: "극한직업", coverImg: UIImage(named: "극한직업"), bgColor: .systemTeal, rate: 5.9),
        Book(bookTitle: "도둑들", coverImg: UIImage(named: "도둑들"), bgColor: .systemMint, rate: 9.2),
        Book(bookTitle: "명량", coverImg: UIImage(named: "명량"), bgColor: .orange, rate: 8.0),
        Book(bookTitle: "베테랑", coverImg: UIImage(named: "베테랑"), bgColor: .green, rate: 8.5),
        Book(bookTitle: "부산행", coverImg: UIImage(named: "부산행"), bgColor: .systemMint, rate: 9.8),
        Book(bookTitle: "신과함께 인과 연", coverImg: UIImage(named: "신과함께인과연"), bgColor: .systemTeal, rate: 9.1),
        Book(bookTitle: "신과함께 죄와 벌", coverImg: UIImage(named: "신과함께죄와벌"), bgColor: .systemPurple, rate: 9.2),
        Book(bookTitle: "아바타", coverImg: UIImage(named: "아바타"), bgColor: .systemPink, rate: 7.8),
        Book(bookTitle: "알라딘", coverImg: UIImage(named: "알라딘"), bgColor: .cyan, rate: 9.1),
        Book(bookTitle: "어벤져스 엔드게임", coverImg: UIImage(named: "어벤져스엔드게임"), bgColor: .yellow, rate: 6.8),
        Book(bookTitle: "왕의 남자", coverImg: UIImage(named: "왕의남자"), bgColor: .orange, rate: 9.5),
        Book(bookTitle: "태극기 휘날리며", coverImg: UIImage(named: "태극기휘날리며"), bgColor: .systemPink, rate: 9.3),
        Book(bookTitle: "택시운전사", coverImg: UIImage(named: "택시운전사"), bgColor: .cyan, rate: 8.6),
        Book(bookTitle: "해운대", coverImg: UIImage(named: "해운대"), bgColor: .systemMint, rate: 9.8)]
}
