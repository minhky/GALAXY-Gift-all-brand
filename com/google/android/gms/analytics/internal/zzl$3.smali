.class Lcom/google/android/gms/analytics/internal/zzl$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/analytics/internal/zzl;->b()V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/analytics/internal/zzl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/internal/zzl;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/zzl$3;->a:Lcom/google/android/gms/analytics/internal/zzl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl$3;->a:Lcom/google/android/gms/analytics/internal/zzl;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzl;->c()V

    return-void
.end method
