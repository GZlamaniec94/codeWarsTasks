# Your task in order to complete this Kata is to write a function which formats a duration, given as a number of seconds,
# in a human-friendly way.

# The function must accept a non-negative integer. If it is zero, it just returns "now". Otherwise, 
# the duration is expressed as a combination of years, days, hours, minutes and seconds.

# It is much easier to understand with an example:

# * For seconds = 62, your function should return 
#    "1 minute and 2 seconds"
# * For seconds = 3662, your function should return
#    "1 hour, 1 minute and 2 seconds"
# For the purpose of this Kata, a year is 365 days and a day is 24 hours.

# Note that spaces are important.

# Detailed rules
# The resulting expression is made of components like 4 seconds, 1 year, etc. 
# In general, a positive integer and one of the valid units of time, separated by a space. 
# The unit of time is used in plural if the integer is greater than 1.

# The components are separated by a comma and a space (", "). Except the last component,
# which is separated by " and ", just like it would be written in English.

# A more significant units of time will occur before than a least significant one. 
# Therefore, 1 second and 1 year is not correct, but 1 year and 1 second is.

# Different components have different unit of times. So there is not repeated units like in 5 seconds and 1 second.

# A component will not appear at all if its value happens to be zero. 
# Hence, 1 minute and 0 seconds is not valid, but it should be just 1 minute.

# A unit of time must be used "as much as possible". It means that the function should not return 61 seconds,
# but 1 minute and 1 second instead. Formally, the duration specified by of a component must not be greater 
# than any valid more significant unit of time.


seconds = 101956166
# my solution    
def formatSecondsToTimeRange (seconds)
    minutes = seconds/60
  minutes != 0 ? hours = minutes/60 : hours = 0
  minutes = minutes%60
  hours != 0 ? days = hours/24 : days = 0
  hours = hours%24
  days != 0 ? years = days/365 : years = 0
  days = days%365
  seconds = seconds%60
    
    timeHash = Hash[]   
    formatedTimeArray = []
 
    if years == 1
        timeHash.store("year", 1)
    elsif years > 1
        timeHash.store("years", years)
    end
    
    if days == 1
        timeHash.store("day", 1)
    elsif days > 1
        timeHash.store("days", days)
    end 

    if hours == 1
        timeHash.store("hour", 1)
    elsif hours > 1 
        timeHash.store("hours", hours)
    end
    
    if minutes == 1
        timeHash.store("minute", 1)
    elsif minutes > 1 
        timeHash.store("minutes", minutes)
    end 

    if seconds == 1
        timeHash.store("second", 1)
    elsif seconds > 1 
        timeHash.store("seconds", seconds)
    end    
      
    p timeHash
    timeHash.each { |key, value|
        formatedTimeArray.push("#{value} #{key}") 
    }     
    if formatedTimeArray.empty? 
        formatedTimeArray.push("now")
    elsif formatedTimeArray.length == 2
        formatedTimeArray.insert(1, " and ")
    elsif formatedTimeArray.length > 2
        for index in 0..(formatedTimeArray.length)-3
            formatedTimeArray[index] += ", "
        end
        formatedTimeArray.insert((formatedTimeArray.length) -1 , " and ")    
    end 
    formatedTimeArray.join
end        

# best pracitce by codewars
def format_duration(total)
    if total == 0
      "now"
    else
      duration = {
        year:   total / (60 * 60 * 24 * 365),
        day:    total / (60 * 60 * 24) % 365,
        hour:   total / (60 * 60) % 24,
        minute: total / 60 % 60,
        second: total % 60
      }
    
      @output = []
    
      duration.each do |key, value|
        if value > 0
          @output << "#{value} #{key}"
          @output.last << "s" if value != 1
        end
      end
    
      @output.join(', ').gsub(/\,\s(?=\d+\s\w+$)/, " and ")
    end
end

   
   
    
    
      



