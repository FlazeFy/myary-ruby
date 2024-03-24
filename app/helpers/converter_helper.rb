module ConverterHelper
    def convert_title_format(val)
        res = val.split.map(&:capitalize).join(' ')
        res.gsub!(/\s+/, ' ')
        res.gsub!(/[^\w\s]/, '')
        res
    end
end
