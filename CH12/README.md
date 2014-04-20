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