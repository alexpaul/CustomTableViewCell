//
//  ViewController.swift
//  CustomTableViewCell
//
//  Created by Alex Paul on 11/17/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class RecipeViewController: UIViewController {
  
  @IBOutlet weak var tableView: UITableView!
  
  private var recipes = [Recipe]()

  override func viewDidLoad() {
    super.viewDidLoad()
    recipes = Recipe.getRecipes()
    tableView.dataSource = self
    tableView.delegate = self
  }
}

extension RecipeViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return recipes.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: "RecipeCell", for: indexPath) as? RecipeCell
      else { fatalError("error getting recipe cell") }
    let recipe = recipes[indexPath.row]
    cell.recipeImage.image = recipe.image
    cell.recipeName.text = recipe.name
    return cell
  }
}

extension RecipeViewController: UITableViewDelegate {
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 400
  }
}
