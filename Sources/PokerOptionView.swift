//
//  PokerOptionView.swift
//  PokerCard
//
//  Created by Weslie Chen on 2019/12/26.
//  Copyright © 2019 Weslie (https://www.iweslie.com)
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import UIKit

enum PKOption {
    case contact
    case language
    case auth
}

internal class PokerOptionView: PokerSubView {
    
    internal let spacing: CGFloat = 20
    
    fileprivate var imageView = UIImageView()
    fileprivate var titileLabel = PKLabel(fontSize: 20)
    
    override init() {
        super.init()
        
        [imageView, titileLabel].forEach(addSubview(_:))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupConstraints() {
        imageView.centerXAnchor.constraint(equalTo: leadingAnchor, constant: 36).isActive = true
        imageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        titileLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 72).isActive = true
        titileLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        heightAnchor.constraint(equalToConstant: 52).isActive = true
        widthAnchor.constraint(equalToConstant: baseWidth - 2 * spacing).isActive = true
    }
}
