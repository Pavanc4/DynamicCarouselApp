//
//  CarouselViewModel.swift
//  DynamicCarouselSearchApp
//
//  Created by PavanAvvaru on 09/04/25.
//


import Foundation

class CarouselViewModel {
    private(set) var lists: [ItemList] = []
    private var filteredLists: [[String]] = []
    
    var currentIndex: Int = 0 {
        didSet { resetSearch() }
    }

    init() {
        self.lists = [
            ItemList(title: "Fruits", items: ["Apple", "Banana", "Cherry", "Date", "Elderberry"]),
            ItemList(title: "Cars", items: ["Ford", "Chevy", "Tesla", "Honda", "Toyota"]),
            ItemList(title: "Animals", items: ["Cat", "Dog", "Elephant", "Fox", "Giraffe"])
        ]
        filteredLists = lists.map { $0.items }
    }

    func filter(text: String) {
        guard !text.isEmpty else { resetSearch(); return }
        filteredLists[currentIndex] = lists[currentIndex].items.filter {
            $0.lowercased().contains(text.lowercased())
        }
    }

    func resetSearch() {
        filteredLists[currentIndex] = lists[currentIndex].items
    }

    func getFilteredItems() -> [String] {
        return filteredLists[currentIndex]
    }

    func getListTitle(at index: Int) -> String {
        return lists[index].title
    }

    var count: Int { return lists.count }
}
