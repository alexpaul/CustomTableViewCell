## Creating a custom table view cell

## Steps 

## 1. Select a table view from the object library 

<p> 
<img src="https://github.com/alexpaul/CustomTableViewCell/blob/master/Images/select-tableview-from-object-library.png" width="800" height="500" />
</p>

## 2. Drag the table view onto the scene in canvas

<p> 
<img src="https://github.com/alexpaul/CustomTableViewCell/blob/master/Images/drag-tableview-to-scene.png" width="800" height="500" />
</p>

## 3. Set table view contstraints

<p> 
<img src="https://github.com/alexpaul/CustomTableViewCell/blob/master/Images/set-table-view-contraints.png" width="800" height="500" />
</p>

## 4. Drag a table view cell onto the table view

<p> 
<img src="https://github.com/alexpaul/CustomTableViewCell/blob/master/Images/drag-a-tableviewcell-onto-tableview.png" width="800" height="500" />
</p>

## 5. Set the reuse identifier in the attribues inspector for the cell.

Be sure to have the cell selected in canvas in order to get access to the identifier in the attributes inspector. To avoid having crashed be sure to copy the identifier that you entered in the attributed inspector as it needs to match in the RecipeViewController - cellForRowAt method. 

<p> 
<img src="https://github.com/alexpaul/CustomTableViewCell/blob/master/Images/set-identifier-in-attributes-inspector.png" width="354" height="349" />
</p>

## 6. Connect the table view outlet to the RecipeViewController

<p> 
<img src="https://github.com/alexpaul/CustomTableViewCell/blob/master/Images/connect-tableview-to-recipeviewcontroller.png" width="800" height="500" />
</p>

## 7. Result of running the app using the default UITableViewCell

<details>
  <summar>RecipeViewController using standard UITableViewCell to display recipe info</summary>
  
```swift
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
```
  
</details> 

</br> 

**Steps to follow to ensure table view is setup correctly:**  
1. Conform the RecipeViewController to UITableViewDataSource 
2. Implement the two required protocol methods: numberOfRowAt and cellForRowAt methods 
3. Set the table view property datasoure to self

<p> 
<img src="https://github.com/alexpaul/CustomTableViewCell/blob/master/Images/uitableviewcell-default-cell.png" width="300" height="650" />
</p>
