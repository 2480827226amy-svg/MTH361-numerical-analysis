
function [x_approx, iter] = bisection(f, a, b, tol, maxIter)
    iter = 0;
    if f(a)*f(b)<0 % checks if satisfy IVT
        for n=1:maxIter
            m = (a+b)/2;
            iter = iter + 1;
            if f(m) == 0 || (b-a)/2 < tol % returns approximation if its error is less than tolerance
                x_approx = m;
                return;
            end

            if f(a)*f(m)<0 % narrows down the interval
                b = m;
            elseif f(b)*f(m)<0
                a = m;
            end

        end
        x_approx = (a+b)/2; % returns a approximation with a warning message 
        fprintf('Method Failed: max iteration reached')
    else
        error("Method Failed: f(a) and f(b) must have opposite signs.") % return error message if f(a)*f(b)>0
    end

end

f = @(x) x^3 - x - 2; 
a = 1;
b = 2;
tol = 10^(-6);
maxIter = 100;
[x, iters] = bisection(f, a, b, tol, maxIter)