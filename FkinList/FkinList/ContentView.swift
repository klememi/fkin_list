import Foundation
import SwiftUI

struct Item: Identifiable {
	let id: String
	let url = URL(string: "https://styles.redditmedia.com/t5_j6lc8/styles/communityIcon_9uopq0bazux01.jpg")!
}

struct Content: View {

	let model: [Item] = {
		var model = [Item]()
		for i in 0 ..< 100 {
			model.append(.init(id: String(i)))
		}
		return model
	}()

	var body: some View {
		List(model) { item in
			Row(item: item)
		}
	}

}

struct Row: View {

	let item: Item

	var body: some View {
		AsyncImage(url: item.url)
	}

}
