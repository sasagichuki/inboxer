def all_ads
    all_ads = Dir.glob('*jpeg*').sort
end

def changer
    if all_ads.length > 1 
        next_ad = all_ads[1]
        current_ad = all_ads[0]
        old_ad = "./older/"+all_ads[0+1]
        File.rename(current_ad, old_ad)
        File.rename(next_ad, current_ad)
    else
        current_ad = all_ads[0]
    end
end
