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

## 8. Select the cell and edit the height in canvas

This will only show us a preview of what the cell will look like. The size in interface builder does not affect the final size of the cell. We have to use heightForRowAt to return the intended height. Default cell heights are 44 points. 

<p> 
<img src="https://github.com/alexpaul/CustomTableViewCell/blob/master/Images/select-cell-edit-height-in-canvas.png" width="800" height="500" />
</p>

## 9. Set the height to 400 points

<p> 
<img src="https://github.com/alexpaul/CustomTableViewCell/blob/master/Images/set-canvas-height-to-400.png" width="347" height="249" />
</p>

## 10. Drag an image view onto the cell

<p> 
<img src="https://github.com/alexpaul/CustomTableViewCell/blob/master/Images/drag-imageview-onto-cell.png" width="800" height="500" />
</p>

## 11. Adjust the image view to half the cell's height

<p> 
<img src="https://github.com/alexpaul/CustomTableViewCell/blob/master/Images/format-imageview-half-height-cell.png" width="800" height="500" />
</p>

## 12. Set the image view constraints.

Set the top, leading and trailing to 0. 

<p> 
<img src="https://github.com/alexpaul/CustomTableViewCell/blob/master/Images/set-imageview-constraints-top-leading-trailing.png" width="800" height="500" />
</p>

## 13. Set the height ratio in relation to the cell

<p> 
<img src="https://github.com/alexpaul/CustomTableViewCell/blob/master/Images/imageview-height-ratio-with-cell.png" width="800" height="500" />
</p>

## 14. Control drag to from the image view to the cell

Select equal heights from the dialog.

<p> 
<img src="https://github.com/alexpaul/CustomTableViewCell/blob/master/Images/select-equal-heights-with-cell.png" width="373" height="331" />
</p>

## 15. Image view height constraints 

<p> 
<img src="https://github.com/alexpaul/CustomTableViewCell/blob/master/Images/edit-imageview-height-contraints.png" width="800" height="500" />
</p>

## 16. Set the height ratio to be 50% of the cell's height

<p> 
<img src="https://github.com/alexpaul/CustomTableViewCell/blob/master/Images/set-height-ratio-50-percent-cell.png" width="282" height="216" />
</p>

## 17. Drag a label onto the cell below the image view

<p> 
<img src="https://github.com/alexpaul/CustomTableViewCell/blob/master/Images/drag-label-onto-cell-set-constraints.png" width="800" height="500" />
</p>

## 18. Create a new subclass of UITableViewCell

<p> 
<img src="https://github.com/alexpaul/CustomTableViewCell/blob/master/Images/create-new-subclass-uitableviewcell.png" width="800" height="500" />
</p>

## 19. Name the subclass RecipeCell

<p> 
<img src="https://github.com/alexpaul/CustomTableViewCell/blob/master/Images/name-subclass-recipe-cell.png" width="800" height="500" />
</p>

## 20. The RecipeCell class

<p> 
<img src="https://github.com/alexpaul/CustomTableViewCell/blob/master/Images/recipecell-class.png" width="800" height="500" />
</p>

## 21. The assistance editor should be laid out as pictured below

<p> 
<img src="https://github.com/alexpaul/CustomTableViewCell/blob/master/Images/assistant-editor-look-setup-outlets.png" width="800" height="500" />
</p>

## 22. The current cell class is UITableViewCell 

<p> 
<img src="https://github.com/alexpaul/CustomTableViewCell/blob/master/Images/current-class-uitableviewcell.png" width="260" height="128" />
</p>

## 23. We need to update the cell class to our custom RecipeCell

<p> 
<img src="https://github.com/alexpaul/CustomTableViewCell/blob/master/Images/class-should-be-recipecell.png" width="319" height="166" />
</p>

## 24. Now we can connect our custom class's outlets to the RecipeViewController scene in Storyboard

Connect the image view

<p> 
<img src="https://github.com/alexpaul/CustomTableViewCell/blob/master/Images/connect-imageview-outlet-from-recipecell.png" width="800" height="500" />
</p>

## 25. Connect the label from the RecipeCell to the RecipeViewController scene

<p> 
<img src="https://github.com/alexpaul/CustomTableViewCell/blob/master/Images/connect-label-outlet-from-recipecell.png" width="800" height="500" />
</p>

## 26. Simulator now shows our custom RecipeCell

<p> 
<img src="https://github.com/alexpaul/CustomTableViewCell/blob/master/Images/custom-recipe-cell.png" width="300" height="650" />
</p>
