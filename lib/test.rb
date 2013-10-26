class Klass
  def name(*args)
    p "I have a name #{args.join(' ')}"
    raise 'fuxk u'
  end

  def ab(str, *args)
    begin
      __send__ str, *args
    rescue Exception => e
      p "AB got #{e.message}"
    end
  end
end

klass = Klass.new
klass.ab :name, "fuxk"