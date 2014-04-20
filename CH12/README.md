Document & CoreData
===================
CoreData
--------
DataBase
ORM

1.Create a visual mapping (new file - core data)
2.create and query objects

NSManagedDocument managedObjectContext(@property)
a container for Core Data
UiManagedDocument *document = [[UIManagedDocument alloc] initWithFileURL:url];

BOOL fileExists = [[UIFileManager defaultManager] fileExistsAtPath:[url path]];

UImangedDocuments AUTOSAVE
[document saveToURL:document.fileURL
			forSaveOperation:UIDocumentSaveForOverwriting
			complie...]

NSNotification

-(void)viewDidAppear:(BOOL)animated
{
	[super viewDidAppear:animated];
	[center addObserver:self
			selector:@selector(contextChanged:)
			name:NSManagedObjectContextDidSaveNotification
			object:document.managedObjectContext];
}
-(void)viewWillDisappear:(BOOL)animated
{
	[center removeObserver:self
				name:NSManagedObjectContextDidSaveNotification
				object:document.managedObjectContext];
	[super viewWillDisapperar:animated];
	]
}

[NSEntityDescription insertNewObjectForEntityForName:@"photo"
					 inManagedObjectContext:context];

addSubClass to fit the subclasses

Photo *photo = [NSEntityDescription insertNewObjectForEntityForName:@"Photo"
									inManagedObjectContext:context];
Categories
----------									
adding to a class

Create objects in the database with insertNewObjectForEntityForName:inManageObjectContext;
Get/set properties with valueForKey:/setValueForKey: or @propertys in a custom subclass
Delete objects using the NSManagedObjectContext deleteObject:

query by NSFetchRequest
1.Entity to Fetch
2.How many objects to fetch (1 time or sum)
3.NSSortDescription
4.NSpredicate 

NSFetchRequest 

NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:@"Photo"];
request.fetchBatchSize = 20;
request.fetchLimit = 100;
request.sortDescriptors = @[sortDescriptor];
request.predicate = ; 类似查询条件

NSortDescriptor *sortDescriptor = [NSSortDescriptor sortDescriptorWithKey:@"title"
													ascending:YES
													seletor:@selector(localizedStanderdCompard:)];

NSManageObjectContext *context = aDocument.managedObjectContext;
NSError *error;
NSArray *photographers = [context executeFetchRequest:request error:&error];

线程安全
[context perfomBlock:^{
	
}]
