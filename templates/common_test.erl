%%% ============================================================================
%%% @author {{author}}
%%% @copyright {{year}}
%%% @doc This is placeholder documentation. You should probably replace it with
%%% a good description of what this common test module is for.
%%% @end
%%% @version 0.1
%%% ============================================================================
-module({{name}}_SUITE).
-include_lib("common_test/include/ct.hrl").

-type proplist() :: [{atom(), term()}].

%%% Callback Exports
-export([all/0
		,init_per_suite/1
		,end_per_suite/1
		,init_per_testcase/2
		,end_per_testcase/2]).

%%% Test Case Exports
-export([test1/0
		,test1/1]).



%%% ============================================================================
%%% Callback Functions
%%% ============================================================================



%% =============================================================================
%% @doc Exports a list of atoms. Each atom is the name of a test case function.
%% @end
%% =============================================================================
-spec all() -> [atom()].
all() ->
	[test1].

%% =============================================================================
%% @doc Called at the start of the test suite. Sets up anything that is
%% configurable for the entire test suite. Don't forget to clean up in
%% end_per_suite/1.
%%
%% From the Common Test documentation:
%% init_per_suite/1 typically contains initializations that are common for all
%% test cases in the suite, and that are only to be performed once. It is
%% recommended to be used for setting up and verifying state and environment on
%% the SUT (System Under Test).
%%
%% This function is executed on a dedicated Erlang process, just like test cases.
%% @end
%% =============================================================================
-spec init_per_suite(proplist()) -> proplist().
init_per_suite(Config) ->
	Config.

%% =============================================================================
%% @doc Called after the test suite finishes. Cleans up anything that was
%% configured for the entire test suite, usually in init_per_suite/1.
%% @end
%% =============================================================================
-spec end_per_suite(proplist()) -> proplist().
end_per_suite(Config) ->
	Config.

%% =============================================================================
%% @doc Called at the start of the test case. Sets up anything that is
%% configurable for the test case. Don't forget to clean up in
%% end_per_testcase/2.
%% @end
%% =============================================================================
-spec init_per_testcase(atom(), proplist()) -> proplist().
init_per_testcase(_CaseName, Config) ->
	Config.

%% =============================================================================
%% @doc Called after the test case finishes. Cleans up anything that was
%% configured for the test case, usually in init_per_testcase/2.
%% @end
%% =============================================================================
-spec end_per_testcase(atom(), proplist()) -> ignored.
end_per_testcase(_CaseName, _Config) ->
	ok.


%%% ============================================================================
%%% Test Cases
%%% ============================================================================



%% =============================================================================
%% @doc test1 info function. Returns a proplist of information about the
%% testcase. The tagged tuples can be:
%% timetrap - How long the test is allowed to run.
%% userdata - Any arbitrary data
%% silent_connections
%% require - specified config variables required by the test case
%% @end
%% =============================================================================
-spec test1() -> proplist().
test1() ->
	[
		{timetrap, {seconds, 60}}
	].

%% =============================================================================
%% @doc This is placeholder documentation. You should probably replace it with a
%% good description of what this test case is for.
%% @end
%% =============================================================================
-spec test1(proplist()) -> ok.
test1(_Config) ->
	ok.
