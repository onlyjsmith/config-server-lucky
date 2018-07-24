class CreateInstance::V20180724213451 < LuckyMigrator::Migration::V1
  def migrate
    create :instances do
     add title : String
     add lob : String
    end

    # Run custom SQL with execute
    #
    # execute "CREATE UNIQUE INDEX things_title_index ON things (title);"
  end

  def rollback
    drop :instances
  end
end
