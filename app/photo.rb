class Photo
  attr_accessor :id

  URL = ""

  def self.load
    manager.loadObjectsAtResourcePath URL, objectMapping:mapping, delegate:self
  end

  def self.manager
    @manager ||= RKObjectManager.managerWithBaseURLString "http://search.twitter.com/search.json?q=.%20For%20example:%20http://search.twitter.com/search.json?q=%40twitterapi"
  end

  def self.objectLoader(objectLoader, didLoadObjects:objects)
    puts objects
  end

  def self.objectLoader(objectLoader, didFailWithError:error)
    puts error
  end

  def self.mapping
    @mapping ||= begin 
      mapping = RKObjectMapping.mappingForClass(Photo)
      mapping.mapKeyPath "_id", toAttribute:"id"
      mapping
    end
  end
end



