UITableView & Ipad
==================
Style
-----

Plain 
Grouped

Table Header
Section:header,table cell
Footer

cell Style
basic
subtitle
leftdetail
rightdetail

UITableView Protocols
---------------------
UITableViews dataSource delegate
delegate － how to display
dataSource - what to display

UITableViewController 默认设置自身

3 import methods
----------------
1.多少 sections
2.rows
3.get a UITableViewCell to draw

每行通过UITableViewCell添加
staticstyle 不需要
-(UITableViewCell *)tableView:(UITableView *)sender
		cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	//get a cell to use 
	UITableViewCell *cell;
	cell = [self.tableView deququReusableCellWithIdentifier:@"cell"
											forIndexPath:indexPath];

    cell.textLabel.text = [self getMyTitleForRow:indexPath.row inSection:indexPath.section];
    return cell;
}

-(NSInterger)numberOfSectionsInTableView:(UITableView *)sender;
-(NSInterger)tableView:(UITableView *)sender numberOfRowsInSection:(NSInterger)section;

tableView:cellForRowAtIndexPath:

-(void)tableView:(UITableView *)sender didSelectRowAtIndexPath:(NSIndexPath *)path
{
	// indexPath.row indexPath.section
}

UITableView Spinner
--------------------
@property *refreshControl

Model changes
-------------
-(void)reloadData;

-(void)reloadRowsAtIndexPaths:(NSArry *)indexPahts
				withRowAnimation:(UITableViewRowAnimation)animationSytle;

Universal Applications
----------------------
tow different storyboards

判断设备
BOOL iPad = ([UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIpad)

master-detail view

－Target/Action 控制 detail 刷新
－segue

UIpopoverController 


