.class Lrx/Observable$27;
.super Lrx/Subscriber;
.source "Observable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Observable;

.field final synthetic val$onNext:Lrx/functions/Action1;


# direct methods
.method constructor <init>(Lrx/Observable;Lrx/functions/Action1;)V
    .registers 3

    .prologue
    .line 7914
    .local p0, "this":Lrx/Observable$27;, "Lrx/Observable.27;"
    iput-object p1, p0, Lrx/Observable$27;->this$0:Lrx/Observable;

    iput-object p2, p0, Lrx/Observable$27;->val$onNext:Lrx/functions/Action1;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .registers 1

    .prologue
    .line 7919
    .local p0, "this":Lrx/Observable$27;, "Lrx/Observable.27;"
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 7923
    .local p0, "this":Lrx/Observable$27;, "Lrx/Observable.27;"
    new-instance v0, Lrx/exceptions/OnErrorNotImplementedException;

    invoke-direct {v0, p1}, Lrx/exceptions/OnErrorNotImplementedException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 7928
    .local p0, "this":Lrx/Observable$27;, "Lrx/Observable.27;"
    .local p1, "args":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/Observable$27;->val$onNext:Lrx/functions/Action1;

    invoke-interface {v0, p1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 7929
    return-void
.end method
