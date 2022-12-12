function approx(a, b, threshold)
	return(math.abs(a - b) < threshold)
end

function clamp(num, min, max)
	if num < min then
		num = min
	elseif num > max then
		num = max
	end
	return num
end

function round(num, numDecimalPlaces)
	local mult = 10^(numDecimalPlaces or 0)
	return math.floor(num * mult + 0.5) / mult
end

function sign(number)
	return (number > 0 and 1) or (number == 0 and 0) or -1
end

