function [calDate, series, header]=fred2read(ticker,startDate,endDate)
% fred2read loads time series data from the fred2 server into MATLAB
% For the ticker symbols and descriptions, see http://research.stlouisfed.org/fred2/
%
% INPUT     ticker .... 1x1  the symbol of the time series
%           startDate . date OPTIONAL: start date of series
%           endDate ... date OPTIONAL: end date of series
%                            to only specify end date, set starDate []
%
% OUTPUT    calDate ... Tx1 the series of calendar dates of the observations
%                           as MATLAB date numbers
%           series .... Tx1 the values of the observation
%           header .... string the header information (unstructured)
%
% EXAMPLE   [calDate series header]=fred2read('GDPC1');
%
% peter.gruber@usi.ch, 2013-02-21, 
% Version 1.4, updated 2015-09-15 for use with https://


% CODES     treasuries .... DGSxx  xx     maturity [3MO, 6MO, 1,2,3,5,7,10,20,30]
%           LIBOR ......... xxxyyyyD156N  xxx currency code
%                                         yyyy  maturity [ONT, 1MT .. 6MT, 9MT, 12M]
%           exchange rates  DEXxxUS       xx country code [CA CH MX BZ SZ KO TH SI VZ NO ]
%                           DEXUSxx       xx country code [EU JP AL UK]
%           GDP             GDPCA (USA), JPNNGDP (Japan), CANRGDPQDSNAQ (Canada)
%                           xxxGDPNQDSMEI xxx EU-country code [DEU FRA ITA ESP POL ...]
%           money stock     Mx            x=1,2 (3 discontinued)
%           stock indices   DJIA, SP500, DJTA, WILL2500IND, WILL4500IND, WILL5000IND 
%           vola indices    VIXCLS, VXNCLS, VXDCLS (DJIA), VXVCLS (3mo VIX), RVXCLS (Russ'2000)
%           vola com'dity   OVXCLS (oil), VXSLVCLS (Ag), GVZCLS (Au)
%           vola names      VXAPLCLS, VXGOGCLS, VXIBMCLS, VXAZNCLS
%           vola sector     VXEEMCLS (emerging mkt), VXGDXCLS (gold miners), VXXLECLS (energy)
%                           VXEWZCLS (brazil), EVZCLS (euro currency)

url     = ['https://research.stlouisfed.org/fred2/data/' ticker '.txt'];
rawData = webread(url);    % urlread            % query string

headPos = strfind(rawData,'DATE');     % where does the header end?
header  = rawData(1:headPos-1);        % copy the header

dStruc  = textscan(rawData(headPos:end), '%s%f','headerLines', 1 ,'TreatAsEmpty','.');
                                       % dStruc is a temp structure with
                                       % calendar dates as strings in first
                                       % row and data in second row
calDate = datenum(dStruc{:,1});
series  = dStruc{:,2};

if nargin>1 && ~isempty(startDate)
	% delete surplus observations before start date
	idx=find(calDate<datenum(startDate));
	calDate(idx)=[];
	series(idx)=[];
end

if nargin>2
	% delete surplus observations after end date
	idx=find(calDate>datenum(endDate));
	calDate(idx)=[];
	series(idx)=[];
end

end