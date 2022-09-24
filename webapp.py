'''
A web app that allows users to enter a clash royale deck and the statistics they want from the deck,
and returns the results of their query.

author: Hugh Shanno, Ashok Khare, Cole Roseth
CS 257, Winter 2022
'''

import flask
from flask import render_template, request
import json
import sys
import datasource

app = flask.Flask(__name__)

# This line tells the web browser to *not* cache any of the files.
app.config['SEND_FILE_MAX_AGE_DEFAULT'] = 0

@app.route("/")
def Home():
    '''
    Renders the home page/form page
    '''
    return render_template("home.html")

@app.route("/about")
def about():
    '''
    This method renders the static about page
    '''
    return render_template("about.html")

@app.route("/results", methods=["POST","GET"])
def searchResult():
    '''
    This method takes the parameters given by the form and plugs them into the backend,
    then passes the backend results into the results web page.
    '''
    
    if request.method == "POST":
        result = request.form
        deck = [result["card1"],result['card2'],result['card3'],result['card4'],result['card5'],result['card6'],result['card7'],result['card8']]
        parameters = []
        if result.get("winRate") != None:
            parameters.append(result["winRate"])
        if result.get("elixirCost") != None:
            parameters.append(result["elixirCost"])
        if result.get("trophyCount") != None:
            parameters.append(result["trophyCount"])
        if result.get("numberOfWins") != None:
            parameters.append(result["numberOfWins"])
        data = datasource.DataSource(deck,parameters)
    
        return render_template("results.html", deck = deck, statistics = data.getSearchResults())

'''
Run the program by typing 'python3 localhost [port]', where [port] is
the user's given port number.
'''
if __name__ == '__main__':
    if len(sys.argv) != 3:
        print('Usage: {0} host port'.format(sys.argv[0]), file=sys.stderr)
        exit()

    host = sys.argv[1]
    port = sys.argv[2]
    app.run(host=host, port=port)
