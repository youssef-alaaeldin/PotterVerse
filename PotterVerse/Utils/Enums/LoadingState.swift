//
//  LoadingState.swift
//  PotterVerse
//
//  Created by Yousuf Abdelfattah on 26/10/2025.
//

import Foundation

enum LoadingState<T> {
    case loading
    case loaded(T?)
    case error
}

