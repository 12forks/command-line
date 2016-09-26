from invoke import task, run

@task
def update_docs(ctx):
    run('coleslaw site')
