.class Lcz/msebera/android/httpclient/client/methods/AbstractExecutionAwareRequest$1;
.super Ljava/lang/Object;
.source "AbstractExecutionAwareRequest.java"

# interfaces
.implements Lcz/msebera/android/httpclient/concurrent/Cancellable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcz/msebera/android/httpclient/client/methods/AbstractExecutionAwareRequest;->setConnectionRequest(Lcz/msebera/android/httpclient/conn/ClientConnectionRequest;)V
.end annotation


# instance fields
.field final synthetic a:Lcz/msebera/android/httpclient/conn/ClientConnectionRequest;

.field final synthetic b:Lcz/msebera/android/httpclient/client/methods/AbstractExecutionAwareRequest;


# direct methods
.method constructor <init>(Lcz/msebera/android/httpclient/client/methods/AbstractExecutionAwareRequest;Lcz/msebera/android/httpclient/conn/ClientConnectionRequest;)V
    .registers 3

    .prologue
    .line 55
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/methods/AbstractExecutionAwareRequest$1;->b:Lcz/msebera/android/httpclient/client/methods/AbstractExecutionAwareRequest;

    iput-object p2, p0, Lcz/msebera/android/httpclient/client/methods/AbstractExecutionAwareRequest$1;->a:Lcz/msebera/android/httpclient/conn/ClientConnectionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/AbstractExecutionAwareRequest$1;->a:Lcz/msebera/android/httpclient/conn/ClientConnectionRequest;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ClientConnectionRequest;->a()V

    .line 59
    const/4 v0, 0x1

    return v0
.end method
