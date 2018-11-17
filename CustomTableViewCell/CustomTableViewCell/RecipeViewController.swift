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
  }
}

extension RecipeViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return recipes.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "RecipeCell", for: indexPath)
    let recipe = recipes[indexPath.row]
    cell.imageView?.image = recipe.image
    cell.textLabel?.text = recipe.name
    return cell
  }
}

