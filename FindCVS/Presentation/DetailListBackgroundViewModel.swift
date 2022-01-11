//
//  DetailListBackgroundViewModel.swift
//  FindCVS
//
//  Created by JeongminKim on 2022/01/11.
//

import RxSwift
import RxCocoa

struct DetailListBackgroundViewModel {
    // viewModel에서 view로
    let isStatusLabelHidden: Signal<Bool>
    
    // 외부에서 전달받을 값
    let shouldHideStatusLabel = PublishSubject<Bool>()
    
    init() {
        isStatusLabelHidden = shouldHideStatusLabel
            .asSignal(onErrorJustReturn: true)
    }
}
