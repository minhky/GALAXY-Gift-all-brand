.class public final Landroid/support/v4/os/AsyncTaskCompat;
.super Ljava/lang/Object;
.source "AsyncTaskCompat.java"


# direct methods
.method public static varargs a(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Params:",
            "Ljava/lang/Object;",
            "Progress:",
            "Ljava/lang/Object;",
            "Result:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/AsyncTask",
            "<TParams;TProgress;TResult;>;[TParams;)",
            "Landroid/os/AsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 39
    if-nez p0, :cond_b

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "task can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_15

    .line 45
    invoke-static {p0, p1}, Landroid/support/v4/os/AsyncTaskCompatHoneycomb;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 51
    :goto_14
    return-object p0

    .line 48
    :cond_15
    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_14
.end method
