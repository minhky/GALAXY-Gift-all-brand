.class Lrx/Observable$15$1;
.super Ljava/lang/Object;
.source "Observable.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Observable$15;->call(Lrx/Observable;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Lrx/Notification",
        "<*>;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lrx/Observable$15;


# direct methods
.method constructor <init>(Lrx/Observable$15;)V
    .registers 2

    .prologue
    .line 6373
    .local p0, "this":Lrx/Observable$15$1;, "Lrx/Observable$15.1;"
    iput-object p1, p0, Lrx/Observable$15$1;->this$1:Lrx/Observable$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 6373
    .local p0, "this":Lrx/Observable$15$1;, "Lrx/Observable$15.1;"
    check-cast p1, Lrx/Notification;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/Observable$15$1;->call(Lrx/Notification;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Notification;)Ljava/lang/Void;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Notification",
            "<*>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 6376
    .local p0, "this":Lrx/Observable$15$1;, "Lrx/Observable$15.1;"
    .local p1, "notification":Lrx/Notification;, "Lrx/Notification<*>;"
    const/4 v0, 0x0

    return-object v0
.end method
