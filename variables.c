struct BeamPoint
{
    int x;
    int y;
};

//trabajabamos con un laser que emitía 4 haces. Y cada haz hacía un barrido.

struct BlockForeground
{
	double heigth;
	double width;
	vector< vector<double> > foreground;
};

double standardDeviationF4(BlockForeground block, int numPoints)
{
	double standardDeviation = 0;

	if (numPoints == 0)
	{
		standardDeviation = 0;
	}
	else
	{
		for (size_t i = 0; i < block.heigth; i++)
		{
			vector<double> foreLine = block.foreground[i];
			double centerTopX = 0;
			double centerTopY = 0;
			int nonZero = 0;
			for (size_t j = 0; j < block.width; j++)
			{
				double value = foreLine[j];
				if (value != 0)
				{
					centerTopX = centerTopX + j;
					centerTopY = centerTopY + value;
					nonZero++;
				}
			}
			if (nonZero != 0)
			{
				centerTopX = centerTopX / nonZero;
				centerTopY = centerTopY / nonZero;

				double summatory = 0;
				for (size_t j = 0; j < block.width; j++)
				{
					double value = foreLine[j];
					if (value != 0)
					{
						summatory = summatory + (pow(j - centerTopX, 2) + pow(value - centerTopY, 2));
					}
				}
				double square = sqrt(summatory / nonZero);

				standardDeviation = standardDeviation + square;
			}
		}
	}

	return standardDeviation;
}

double meanAverageDeviationF5(BlockForeground block, int numPoints)
{
	double meanAverage = 0;

	if (numPoints == 0)
	{
		meanAverage = 0;
	}
	else
	{
		for (size_t i = 0; i < block.heigth; i++)
		{
			vector<double> foreLine = block.foreground[i];

			vector<double> nonZero;
			for (size_t j = 0; j < foreLine.size(); j++)
			{
				double value = foreLine[j];
				if (value != 0)
				{
					nonZero.push_back(value);
				}
			}

			if (nonZero.size() != 0)
			{
				// get median
				int randomSize = nonZero.size();
				double medianX = 0;
				double medianY = 0;
				if (randomSize != 0)
				{
					if (randomSize % 2 == 1)
					{
						int position = (randomSize + 1) / 2;
						medianX = position;
						medianY = nonZero[position];
					}
					else
					{
						int middlePosition = randomSize / 2;
						double middleValueX = middlePosition;
						double middleValueY = nonZero[middlePosition];
						int nextPosition = (randomSize / 2) + 1;
						double nextValueX = nextPosition;
						double nextValueY = nonZero[nextPosition];

						medianX = (middleValueX + nextValueX) / 2;
						medianY = (middleValueY + nextValueY) / 2;
					}
				}


				double summatory = 0;
				for (size_t j = 0; j < nonZero.size(); j++)
				{
					double diffX = pow(j - medianX, 2);
					double diffY = pow(nonZero[j] - medianY, 2);
					double square = sqrt(diffX + diffY);
					summatory = summatory + square;
				}

				meanAverage = meanAverage + (summatory / nonZero.size());
			}
		}
	}

	return meanAverage;
}

double diagonalWidthF8(BlockForeground block)
{
	double diagonal = 0;

	int initialX = 0;
	int initialY = 0;

	int finalX = block.width;
	int finalY = block.heigth;

	float summatory = (pow(finalX - initialX, 2)) + (pow(finalY - initialY, 2));
	double square = sqrt(summatory);
	diagonal = square;

	return diagonal;
}

double cubicDiagonalDistanceF9(BlockForeground block)
{
	double distance = 0;

	double highPoint = 0;
	for (size_t i = 0; i < block.heigth; i++)
	{
		vector<double> foreLine = block.foreground[i];
		for (size_t j = 0; j < foreLine.size(); j++)
		{
			double value = foreLine[j];
			if (value > highPoint)
			{
				highPoint = value;
			}
		}
	}

	distance = sqrt(pow(block.width, 2) + pow(block.heigth, 2) + pow(highPoint, 2));

	return distance;
}

double sphericityF10(BlockForeground block)
{
	double sphericity = 0;

	double highPoint = 0;
	for (size_t i = 0; i < block.heigth; i++)
	{
		vector<double> foreLine = block.foreground[i];
		for (size_t j = 0; j < foreLine.size(); j++)
		{
			double value = foreLine[j];
			if (value > highPoint)
			{
				highPoint = value;
			}
		}
	}

	int area = (2 * block.width * block.heigth) + (2 * block.heigth * highPoint) + (2 * highPoint * block.width);

	int volume = block.width * block.heigth * highPoint;

	sphericity = (PI * 4.0 * pow(3.0 * volume / PI * 4.0, 2.0 / 3.0)) / area;

	return sphericity;
}

double linearityF11(BlockForeground block)
{
	double linearity = 0;

	int zeroLines = 0;

	for (size_t i = 0; i < block.heigth; i++)
	{
		vector<double> foreLine = block.foreground[i];
		bool allZeroes = true;
		vector<double> nonZeroes;
		for (size_t j = 0; j < block.width; j++)
		{
			double value = foreLine[j];
			if (value != 0)
			{
				allZeroes = false;
				nonZeroes.push_back(value);
			}
		}

		if (allZeroes)
		{
			zeroLines++;
		}
		else
		{
			// get mean
			double x_mean = 0;
			double y_mean = 0;
			for (size_t s = 0; s < nonZeroes.size(); s++)
			{
				x_mean += s / nonZeroes.size();
				y_mean += nonZeroes[s] / nonZeroes.size();
			}

			CvMat* points = cvCreateMat(nonZeroes.size(), 2, CV_64FC1);
			{
				int j = 0;
				for (size_t s = 0; s < nonZeroes.size(); s++)
				{
					cvmSet(points, j, 0, s - x_mean);
					cvmSet(points, j, 1, nonZeroes[s] - y_mean);
					j++;
				}
			}

			CvMat* W = cvCreateMat(2, 2, CV_64FC1);
			CvMat* U = cvCreateMat(nonZeroes.size(), 2, CV_64FC1);
			CvMat* V = cvCreateMat(2, 2, CV_64FC1);
			cvSVD(points, W, U, V);

			CvMat* rot_points = cvCreateMat(nonZeroes.size(), 2, CV_64FC1);
			cvMatMul(U, W, rot_points);

			float beamLinearity = 0.0;
			for (size_t l = 0; l < nonZeroes.size(); l++)
			{
				beamLinearity += pow(cvmGet(rot_points, l, 1), 2);
			}

			linearity = linearity + beamLinearity;
		}
	}

	linearity = linearity / (block.heigth - zeroLines);

	return linearity;
}

double circularityF12(BlockForeground block)
{
	double circularity = 0;

	int zeroLines = 0;

	for (size_t i = 0; i < block.heigth; i++)
	{
		vector<double> foreLine = block.foreground[i];
		bool allZeroes = true;
		vector<double> nonZeroes;
		for (size_t j = 0; j < block.width; j++)
		{
			double value = foreLine[j];
			if (value != 0)
			{
				allZeroes = false;
				nonZeroes.push_back(value);
			}
		}

		if (allZeroes)
		{
			zeroLines++;
		}
		else if (nonZeroes.size() < 3)
		{
			zeroLines++;
		}
		else
		{
			CvMat* A = cvCreateMat(nonZeroes.size(), 3, CV_64FC1);
			CvMat* B = cvCreateMat(nonZeroes.size(), 1, CV_64FC1);
			{
				int j = 0;
				for (size_t k = 0; k < nonZeroes.size(); k++)
				{
					int y = nonZeroes[k];

					cvmSet(A, j, 0, -2.0 * k);
					cvmSet(A, j, 1, -2.0 * y);
					cvmSet(A, j, 2, 1);

					cvmSet(B, j, 0, -pow(k, 2) - pow(y, 2));
					j++;
				}
				if (j == 2)
				{
					cvmSet(B, j, 0, 1);
				}
			}
			if (nonZeroes.size() == 2)
			{
				cvmSet(A, 2, 0, -2.0 * 1);
				cvmSet(A, 2, 1, -2.0 * 1);
				cvmSet(A, 2, 2, 1);

				cvmSet(B, 2, 0, -pow(1, 2) - pow(1, 2));
			}

			CvMat* sol = cvCreateMat(3, 1, CV_64FC1);

			cvSolve(A, B, sol, CV_SVD);

			float xc = cvmGet(sol, 0, 0);
			float yc = cvmGet(sol, 1, 0);
			float rc = sqrt(pow(xc, 2) + pow(yc, 2) - cvmGet(sol, 2, 0));

			float beamCircularity = 0.0;
			for (size_t k = 0; k < nonZeroes.size(); k++)
			{
				int y = nonZeroes[k];
				beamCircularity += pow(rc - sqrt(pow(xc - k, 2) + pow(yc - y, 2)), 2);
			}

			circularity = circularity + beamCircularity;
		}
	}

	circularity = circularity / (block.heigth - zeroLines);

	return circularity;
}

double radiusF13(BlockForeground block)
{
	double radius = 0;

	int zeroLines = 0;

	for (size_t i = 0; i < block.heigth; i++)
	{
		vector<double> foreLine = block.foreground[i];
		bool allZeroes = true;
		vector<double> nonZeroes;
		for (size_t j = 0; j < block.width; j++)
		{
			double value = foreLine[j];
			if (value != 0)
			{
				allZeroes = false;
				nonZeroes.push_back(value);
			}
		}

		if (allZeroes)
		{
			zeroLines++;
		}
		else
		{
			// get centroid
			double centroidX = 0;
			double centroidY = 0;
			for (size_t c = 0; c < nonZeroes.size(); c++)
			{
				float valueX = c;
				float valueY = nonZeroes[c];

				centroidX = centroidX + valueX;
				centroidY = centroidY + valueY;
			}
			centroidX = centroidX / nonZeroes.size();
			centroidY = centroidY / nonZeroes.size();

			// get radius
			double r = 0;
			double distanceAVG = 0;
			for (size_t d = 0; d < nonZeroes.size(); d++)
			{
				float valueX = d;
				float valueY = nonZeroes[d];

				double distance = pow(valueX - centroidX, 2) + pow(valueY - centroidY, 2);
				distanceAVG = distanceAVG + distance;
			}
			distanceAVG = distanceAVG / nonZeroes.size();
			r = sqrt(distanceAVG);

			radius = radius + r;
		}
	}

	radius = radius / (block.heigth - zeroLines);

	return radius;
}



double meanCurvatureF16(BlockForeground block)
{
	double meanCurvature = 0;

	int zeroLines = 0;

	for (size_t i = 0; i < block.heigth; i++)
	{
		vector<double> foreLine = block.foreground[i];
		bool allZeroes = true;
		vector<double> nonZeroes;
		for (size_t j = 0; j < block.width; j++)
		{
			double value = foreLine[j];
			if (value != 0)
			{
				allZeroes = false;
				nonZeroes.push_back(value);
			}
		}

		if (allZeroes)
		{
			zeroLines++;
		}
		else
		{
			if (nonZeroes.size() < 3)
			{
				meanCurvature = meanCurvature + 0;
			}
			else
			{
				double mean = 0;
				for (size_t t = 1; t < nonZeroes.size() - 1; t++)
				{
					vector<double> triangleInfo = getTriangleInfoAndDistances(nonZeroes, t);

					// area of the triangle
					double area = abs((triangleInfo[0] * (triangleInfo[3] - triangleInfo[5])) +
							(triangleInfo[2] * (triangleInfo[5] - triangleInfo[1])) +
							(triangleInfo[4] * (triangleInfo[1] - triangleInfo[3])))
									/ 2;

					// k value
					double k = (4 * area) / (triangleInfo[6] * triangleInfo[7] * triangleInfo[8]);

					mean = mean + k;
				}

				meanCurvature = meanCurvature + mean;
			}
		}
	}

	meanCurvature = meanCurvature / (block.heigth - zeroLines);

	return meanCurvature;
}

double meanAngularDifferenceF17(BlockForeground block)
{
	double meanAngularDifference = 0;

	int zeroLines = 0;

	for (size_t i = 0; i < block.heigth; i++)
	{
		vector<double> foreLine = block.foreground[i];
		bool allZeroes = true;
		vector<double> nonZeroes;
		for (size_t j = 0; j < block.width; j++)
		{
			double value = foreLine[j];
			if (value != 0)
			{
				allZeroes = false;
				nonZeroes.push_back(value);
			}
		}

		if (allZeroes)
		{
			zeroLines++;
		}
		else
		{
			if (nonZeroes.size() < 3)
			{
				meanAngularDifference = meanAngularDifference + 0;
			}
			else
			{
				double meanAngular = 0;
				double angles = 0;
				for (size_t t = 1; t < nonZeroes.size() - 1; t++)
				{
					vector<double> triangleInfo = getTriangleInfoAndDistances(nonZeroes, t);

					// angle between AB and BC
					double beta = acos((triangleInfo[6] + triangleInfo[7] - triangleInfo[8]) / (2 * triangleInfo[6] * triangleInfo[7]));

					meanAngular = meanAngular + beta;
					angles++;
				}

				meanAngularDifference = meanAngularDifference + meanAngular;
			}
		}
	}

	meanAngularDifference = meanAngularDifference / (block.heigth - zeroLines);

	return meanAngularDifference;
}


double boundingBoxAreaF26(BlockForeground block, int maximumHeight)
{
	double area = 0;

	area = (2 * block.width * block.heigth) + (2 * block.heigth * maximumHeight) + (2 * maximumHeight * block.width);

	return area;
}

double boundingBoxVolumeF27(BlockForeground block, int maximumHeight)
{
	double volume = block.width * block.heigth * maximumHeight;

	return volume;
}

double convexHullAreaF28(BlockForeground block, int numPoints)
{
	double hullArea = 0;

	BeamPoint points[numPoints] = { };
	int pos = 0;
	for (size_t i = 0; i < block.heigth; i++)
	{
		vector<double> foreLine = block.foreground[i];
		for (size_t j = 0; j < foreLine.size(); j++)
		{
			double value = foreLine[j];
			if (value != 0)
			{
				BeamPoint p;
				p.x = j;
				p.y = i;

				points[pos] = p;
				pos++;
			}
		}
	}

	int n = sizeof(points)/sizeof(points[0]);
	stack<BeamPoint> S = convexHull(points, n);
	vector<BeamPoint> vectorS;
	while (!S.empty())
	{
		BeamPoint point = S.top();
		vectorS.push_back(point);
		S.pop();

	}

	for (size_t i = 0; i < vectorS.size() - 1; ++i)
	{
		hullArea += vectorS[i].x * vectorS[i+1].y - vectorS[i+1].x * vectorS[i].y;
	}
	hullArea += vectorS[vectorS.size() - 1].x * vectorS[0].y - vectorS[0].x * vectorS[vectorS.size() - 1].y;
	hullArea = abs(hullArea) / 2.0f;

	return hullArea;
}

double linearInterpolationF29(BlockForeground block)
{
	double linear = 0;

	for (size_t i = 0; i < block.heigth; i++)
	{
		vector<double> X, Y;
		int pos = 0;
		vector<double> foreLine = block.foreground[i];
		for (size_t j = 0; j < foreLine.size(); j++)
		{
			double value = foreLine[j];
			if (value != 0)
			{
				X.push_back(j);
				Y.push_back(value);
				pos++;
			}

		}

		if (pos != 0 && X.size() > 2)
		{
			sort(X.begin(), X.end());
			sort(Y.begin(), Y.end());

			tk::spline s;
			s.set_points(X,Y,false);
			double x = 1.5;
			double currentLinear = s(x);

			linear = linear + currentLinear;
		}
	}

	linear = linear / block.heigth;

	return linear;
}

double cubicSplineInterpolationF30(BlockForeground block)
{
	double cubic = 0;

	for (size_t i = 0; i < block.heigth; i++)
	{
		vector<double> X, Y;
		int pos = 0;
		vector<double> foreLine = block.foreground[i];
		for (size_t j = 0; j < foreLine.size(); j++)
		{
			double value = foreLine[j];
			if (value != 0)
			{
				X.push_back(j);
				Y.push_back(value);
				pos++;
			}
		}

		if (pos != 0 && X.size() > 2)
		{
			sort(X.begin(), X.end());
			sort(Y.begin(), Y.end());

			tk::spline s;
			s.set_points(X,Y,true);
			double x = 1.5;
			double currentCubic = s(x);

			cubic = cubic + currentCubic;
		}
	}

	cubic = cubic / block.heigth;

	return cubic;
}

double centroidKurtosisF31(BlockForeground block)
{
	double kurtosis = 0;

	double centroidX;
	double centroidY;
	double centroidZ;

	int nonZero = 0;

	for (size_t i = 0; i < block.heigth; i++)
	{
		vector<double> foreLine = block.foreground[i];
		for (size_t j = 0; j < foreLine.size(); j++)
		{
			double value = foreLine[j];
			if (value != 0)
			{
				centroidX = centroidX + j;
				centroidY = centroidY + i;
				centroidZ = centroidZ + value;

				nonZero++;
			}
		}
	}

	centroidX = centroidX / nonZero;
	centroidY = centroidY / nonZero;
	centroidZ = centroidZ / nonZero;

	// standard deviation with respect to the centroid
	double summatory = 0;
	for (size_t i = 0; i < block.heigth; i++)
	{
		vector<double> foreLine = block.foreground[i];
		for (size_t j = 0; j < foreLine.size(); j++)
		{
			double value = foreLine[j];
			if (value != 0)
			{
				summatory = summatory + (pow(j - centroidX, 2) + pow(i - centroidY, 2) + pow(value -centroidZ, 2));
			}
		}
	}
	double square = sqrt(summatory / nonZero);

	// num-points * standard deviation ^ 4
	double divisor = nonZero * pow(square, 4);

	// center of gravity ^ 4
	double summatoryUp = 0;
	for (size_t i = 0; i < block.heigth; i++)
	{
		vector<double> foreLine = block.foreground[i];
		for (size_t j = 0; j < foreLine.size(); j++)
		{
			double value = foreLine[j];
			if (value != 0)
			{
				summatoryUp = summatoryUp + (pow(j - centroidX, 4) + pow(i - centroidY, 4) + pow(value -centroidZ, 4));
			}
		}
	}

	kurtosis = summatoryUp / divisor;

	return kurtosis;
}




// A utility function to find next to top in a stack
BeamPoint nextToTop(stack<BeamPoint> &S)
{
	BeamPoint p = S.top();
    S.pop();
    BeamPoint res = S.top();
    S.push(p);
    return res;
}

// A utility function to swap two points
int swap(BeamPoint &p1, BeamPoint &p2)
{
	BeamPoint temp = p1;
    p1 = p2;
    p2 = temp;
}

// A utility function to return square of distance
// between p1 and p2
int distSq(BeamPoint p1, BeamPoint p2)
{
    return (p1.x - p2.x)*(p1.x - p2.x) +
          (p1.y - p2.y)*(p1.y - p2.y);
}

// To find orientation of ordered triplet (p, q, r).
// The function returns following values
// 0 --> p, q and r are colinear
// 1 --> Clockwise
// 2 --> Counterclockwise
int orientation(BeamPoint p, BeamPoint q, BeamPoint r)
{
    int val = (q.y - p.y) * (r.x - q.x) -
              (q.x - p.x) * (r.y - q.y);

    if (val == 0) return 0;  // colinear
    return (val > 0)? 1: 2; // clock or counterclock wise
}

// A function used by library function qsort() to sort an array of
// points with respect to the first point
int compare(const void *vp1, const void *vp2)
{
	BeamPoint *p1 = (BeamPoint *)vp1;
	BeamPoint *p2 = (BeamPoint *)vp2;

   // Find orientation
   int o = orientation(p0, *p1, *p2);
   if (o == 0)
     return (distSq(p0, *p2) >= distSq(p0, *p1))? -1 : 1;

   return (o == 2)? -1: 1;
}

// Prints convex hull of a set of n points.
stack<BeamPoint> convexHull(BeamPoint points[], int n)
{
   // Find the bottommost point
   int ymin = points[0].y, min = 0;
   for (int i = 1; i < n; i++)
   {
     int y = points[i].y;

     // Pick the bottom-most or chose the left
     // most point in case of tie
     if ((y < ymin) || (ymin == y &&
         points[i].x < points[min].x))
        ymin = points[i].y, min = i;
   }

   // Place the bottom-most point at first position
   swap(points[0], points[min]);

   // Sort n-1 points with respect to the first point.
   // A point p1 comes before p2 in sorted ouput if p2
   // has larger polar angle (in counterclockwise
   // direction) than p1
   p0 = points[0];
   qsort(&points[1], n-1, sizeof(Point), compare);//metodo de ordenación

   // If two or more points make same angle with p0,
   // Remove all but the one that is farthest from p0
   // Remember that, in above sorting, our criteria was
   // to keep the farthest point at the end when more than
   // one points have same angle.
   int m = 1; // Initialize size of modified array
   for (int i=1; i<n; i++)
   {
       // Keep removing i while angle of i and i+1 is same
       // with respect to p0
       while (i < n-1 && orientation(p0, points[i],
                                    points[i+1]) == 0)
          i++;


       points[m] = points[i];
       m++;  // Update size of modified array
   }

   // If modified array of points has less than 3 points,
   // convex hull is not possible
   if (m < 3)
   {
	   cout << "Convex hull not possible." << endl;
	   exit(1);
   }

   // Create an empty stack and push first three points
   // to it.
   stack<BeamPoint> S;
   S.push(points[0]);
   S.push(points[1]);
   S.push(points[2]);

   // Process remaining n-3 points
   for (int i = 3; i < m; i++)
   {
      // Keep removing top while the angle formed by
      // points next-to-top, top, and points[i] makes
      // a non-left turn
      while (orientation(nextToTop(S), S.top(), points[i]) != 2)
         S.pop();
      S.push(points[i]);
   }

   return S;
}